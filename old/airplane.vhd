library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity airplane is
port(
reset : in std_logic;
clock : in std_logic;
entranceA : in std_logic;--enable enter
exitB : in std_logic;--enable exit
enterAE: in std_logic;--enable enter emergency
L : in  std_logic;--order to leave
fuel: in  std_logic;--fuel
bug: in  std_logic;--bug 
aE : out std_logic;--airplane emergency(request)
A: out std_logic; --request to enter
B : out std_logic);--request to leave


end airplane;

architecture Behavioral of airplane is
TYPE FSMStates IS (flight, park,leave);
SIGNAL PrState, NextState : FSMStates;
--signal c,r:std_logic;
signal s: integer;
signal timerout:std_logic;
COMPONENT Timer 
port(C     : in std_logic;r    : in std_logic; Seconds : in integer;f    : out std_logic);
	end component;


begin
--tim : Timer PORT map(Clk=>c,Rst=>r,Seconds=>s,f=>timerout);
tim : Timer PORT map(Clock,reset,s,timerout);
process(clock)
begin
--c<=clock;
--r<=reset;
s<=50;

if(rising_edge(clock)) then
PrState<=NextState;

if(reset = '1') then
aE<='0';
A<='0';
B<='0';
PrState<=flight;
end if;

if(L='1') then
	NextState<=leave;
else
if (PrState=flight and (fuel='1' or bug='1')) then -- fuel or bug -1 means that there is a problem
	if(entranceA='0') then
		if(enterAE='1') then 
			NextState<=park;
		else
			aE<='1';
			A<='1';
			B<='0';
			NextState<=flight;
		end if;
	
	else 
		NextState<=park;
		
	end if;
	
elsif PrState=flight then 
	if(entranceA='0') then
		aE<='0';
		A<='1';
		B<='0';
		NextState<=flight;
	else
		NextState<=park;
	end if; 
end if; 

if( PrState=park and timerout='1' ) then 
	if(exitB='1') then
		NextState<=flight;
	else	
		aE<='0';
		A<='0';
		B<='1';
		NextState<=park;
    end if;

end if;
end if;
end if;
end process;


end Behavioral;
