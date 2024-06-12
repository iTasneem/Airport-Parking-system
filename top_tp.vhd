LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
 
ENTITY top_tp IS
END top_tp;
 
ARCHITECTURE behavior OF top_tp IS
 

 
COMPONENT Top
port(
resetT : in std_logic;
clockT : in std_logic;
fireT: in std_logic;
weathT:in std_logic;
countT:out std_logic_vector(9 downto 0);
countET:out std_logic_vector(1 downto 0);
airpotEmerT:inout std_logic);

END COMPONENT;
 
--Inputs
signal clockTs : std_logic := '0';
signal resetTs : std_logic := '0';
signal fireTs : std_logic := '0';
signal weathTs : std_logic := '0';
--Outputs
signal countTs : std_logic_vector(9 downto 0);
signal countETs : std_logic_vector(9 downto 0);
signal airpotEmerTs: std_logic :='0';
constant clock_period : time := 20 ns;
 
BEGIN
 
uut: Top PORT MAP (
 clockTs,
 resetTs,
 fireTs,
 weathTs,
countTs,
 countETs,
airpotEmerTs
);
 

process(clockTs)
begin
clockTs <= '0';
wait for clock_period/2;
clockTs <= '1';
wait for clock_period/2;
end process;
 

process(resetTs,fireTs)
begin

wait for 20 ns;
resetTs <= '1';
wait for 20 ns;
resetTs <= '0';
wait for 200 ns;
fireTs <= '1';

end process;
 
END;
