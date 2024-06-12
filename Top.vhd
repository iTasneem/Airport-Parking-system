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
airpotEmerT:inout std_logic);

end Top;

architecture Behavioral of Top is

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
entranceA : in std_logic;--enable enter
exitB : in std_logic;--enable exit
enterAE: in std_logic;--enable enter emergency
L : in  std_logic;--order to leave
fuel: in  std_logic;--fuel
bug: in  std_logic;--bug 
aE : out std_logic;--airplane emergency(request)
A: out std_logic; --request to enter
B : out std_logic--request to leave
);

	end component;
COMPONENT airportE 

port(
    clock  : in std_logic;
    reset   : in std_logic; 
    fire : in std_logic;
	weth: in std_logic;
	pE   : out std_logic
	);
	end component;
signal AA,BB,aes,fuelTs,BugTs,entranceAs,exitBs,enterAEs,Ls,aEss,Ass,Bss,airpotEmerTs,enterAE:std_logic;
begin
--airpl :airplane PORT map(resetT=>reset,clockT=>clock,entranceA1=>entranceA2,exitB1=>exitB2,enterAE1=>enterAE2,L1=>L2,fuelT=>fuel,BugT=>Bug,aE1=>aE2,A1=>A2,B1=>B2);
--airemer : airportE port map(reset=>resetT,clock=>clockT,fire=>fireTS,weth=>weathTS,pE=>airpotEmerTS);
-- park : airplaneParking port map(reset=>resetT,clock=>clockT,entranceA=>entranceA1,exitB=>exitB1,enterAE=>enterAE1,L=>L1,A=>A1,B=>B1,count=>countTS,countE=>countETS);
airemer : airportE port map(clockT,resetT,fireT,weathT,airpotEmerT);
park : airplaneParking port map(resetT,clockT,AA,BB,aes,airpotEmerTs,entranceAs,exitBs,enterAEs,Ls,countT,countET);
airpl :airplane PORT map(resetT,clockT,entranceAs,exitBs,enterAE,Ls,fuelTs,BugTs,aEss,Ass,Bss);




process(clockT,resetT)
begin

if resetT='1' then 
	AA<='0';
	BB<='0';
	aes<='0';
	--pes<=0;
	fuelTs<='0';
	BugTs<='0';
	--enterAEss<='0';
	airpotEmerTs<='0';
	enterAE<='0';
	--entranceAs<='0';exitBs<='0';enterAEs<='0';Ls<='0';
	airpotEmerTs<='0';
	
elsif rising_edge(clockT) then

	AA<=Ass;
	BB<=Bss;
	aes<=aEss;
	fuelTs<='0';
	BugTs<='0';
	--enterAEss<=enterAEs;
	airpotEmerTs<=airpotEmerT;
	enterAE<=enterAEs;
	
	
--entranceAs<=entranceA;exitBs<=exitB;enterAEs<=enterAE;Ls<=enterAE;

end if;

end process;
end Behavioral;
