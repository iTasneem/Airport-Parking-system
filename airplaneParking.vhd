library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;

entity airplaneParking is
port(

reset : in std_logic;
clock : in std_logic;
A : in std_logic;--request to enter
B : in std_logic;--request to leave
aE : in std_logic;--airplane emergency
pE: in std_logic;--airport emergency
entranceA : out std_logic;--enable enter
exitB : out std_logic;--enable exit
enterAE: out std_logic;--enable enter emergency
L : out std_logic;--order to leave
count : out std_logic_vector(9 downto 0);--normal parking slots
countE : out std_logic_vector(1 downto 0));--emergency parking slots

end airplaneParking;

architecture Behavioral of airplaneParking is
signal cou : std_logic_vector(9 downto 0);
signal couE : std_logic_vector(1 downto 0);

begin

process(clock)
begin

if(rising_edge(clock)) then
if(reset = '1') then
cou(0) <= '0';
cou(1) <= '0';
cou(2) <= '0';
cou(3) <= '0';
cou(4) <= '0';
cou(5) <= '0';
cou(6) <= '0';
cou(7) <= '0';
cou(8) <= '0';
cou(9) <= '0';
couE(0) <= '0';
couE(1) <= '0';
entranceA <= '0';
enterAE<='0';
exitB <= '0';
L <='0';
end if;

--asking if there is an airport emergency
if (pE= '1')then
	entranceA <= '0';
	enterAE<='0';
	exitB <= '0';
	L<= '1';
else
--if a plane is asking to enter and there is no plane asking to leave and parking slots are less than 10
if(A = '1' and B = '0' and cou < "1111111111" and reset = '0') then
	cou <= cou+1;
	entranceA <= '1';
	enterAE<='0';
	exitB <= '0';
	L<='0';
end if;
--if there is no plane asking to enter and there is a plane asking to leave and parking slots are greater than 0
if(A = '0' and B = '1' and cou > "000000000" and reset = '0') then
	cou <= cou-1;
	enterAE<='0';
	entranceA <= '0';
	exitB <= '1';
	L<='0';
	
end if;	
--if a plane is asking to enter and there is a plane asking to leave and parking slots are less than 10
if(A = '1' and B = '1' and cou < "1111111111" and reset = '0') then
	cou <= cou+1;
	entranceA <= '1';
	enterAE<='0';
	exitB <= '0';
	L<='0';
--if a plane is asking to enter and there is a plane asking to leave and parking slots are 10
elsif(A = '1' and B = '1' and cou ="1111111111" and reset = '0') then
	cou <= cou-1;
	entranceA <= '0';
	enterAE<='0';
	exitB <= '1';
	L<='0';
end if;	
--if there is an emergency and emgergency slots are less than 2
if(aE='1' and couE<"11" and reset='0') then 
	couE<=couE+1;
	enterAE<='1';
	entranceA <= '0';
	exitB <= '0';
	L<='0';
end if;
--if there is an emergency and emgergency slots are full and normal parking slots are full
if(aE='1' and couE="11" and cou="1111111111" and reset='0') then 
	entranceA<='0';
	enterAE<='0';
	L<='1';
end if;
--if there is a plane leaving and a plane in emergency slot 
if(B='1' and couE>"00" and reset='0') then 
	enterAE<='0';
	enterAE<='0';
	couE<=couE-1;
	exitB<='1';
	L<='0';
end if;
end if;
end if;
end process;

process(clock)
begin
if(rising_edge(clock)) then
	count<= cou;
	countE<= couE;
end if;
end process;
end Behavioral;
