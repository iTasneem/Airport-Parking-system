library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity Top is
port(
resetT : in std_logic;
clockT : in std_logic;
fireT: in std_logic;
weathT:in std_logic;
countT:out std_logic_vector(9 downto 0);
countET:out std_logic_vector(1 downto 0);
airpotEmerT:in std_logic);

end Top;

architecture Behavioral of Top is
signal fuelT,BugT,fireTS,weathTS,airpotEmerTS,exitB1,L1,enterAE1,entranceA1,A1,B1,aE1,pE1: std_logic;
signal countTS: std_logic_vector(9 downto 0);
signal countETS:std_logic_vector(1 downto 0);
COMPONENT airplaneParking 
port(

reset : in std_logic;
clock : in std_logic;
A : in std_logic;
B : in std_logic;
aE : in std_logic;--airplane emergency
pE: in std_logic;--airport emergency
entranceA : out std_logic; 
exitB : out std_logic;
enterAE: out std_logic;
L : out std_logic;
count : out std_logic_vector(9 downto 0);
countE : out std_logic_vector(1 downto 0)
);
	end component;
COMPONENT airplane 
port(
reset : in std_logic;
clock : in std_logic;
entranceA2 : in std_logic;--enable enter
exitB2 : in std_logic;--enable exit
enterAE2: in std_logic;--enable enter emergency
L2 : in  std_logic;--order to leave
fuel: in  std_logic;--fuel
bug: in  std_logic;--bug 
aE2 : out std_logic;--airplane emergency(request)
A2: out std_logic; --request to enter
B2 : out std_logic--request to leave
);

	end component;
COMPONENT airportE 

port(
    clock     : in std_logic;
    reset    : in std_logic; 
    fire : in std_logic;
	weth: in std_logic;
	pE   : out std_logic
	);
	end component;
	
begin
airpl :airplane PORT map(reset=>resetT,clock=>clockT,exitB2=>exitB1,L2=>L1,entranceA2=>entranceA1,enterAE2=>enterAE1,fuel=>fuelT,bug=>BugT,A=>A1,B=B1,aE2=>aE1);
airemer : airportE port map(reset=>resetT,clock=>clockT,fire=>fireTS,weth=>weathTS,pE=>airpotEmerTS);
 park : airplaneParking port map(reset=>resetT,clock=>clockT,entranceA=>entranceA1,exitB=>exitB1,enterAE=>enterAE1,L=>L1,A=>A1,B=>B1,count=>countTS,countE=>countETS);
process(clock)
begin

if(rising_edge(clock)) then
if reset='1' then 
	fuelT<='0';
	weathT<='0';
end if;

fireT<=fireTS;
weathT<=weathTS;
airpotEmerT<=airpotEmerTS;
countT<=countTS;
countET<=countETS;
exitB1<=exitB;
L1<=L;
enterAE1<=enterAE;
entranceA1<=entranceA;
A1<=A2;
B1<=B2;
aE1<=aE2;
end if;
end process;
end Behavioral;
