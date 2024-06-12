library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity airportE is

port(
    clock: in std_logic;
    reset : in std_logic; 
    fire : in std_logic;
	weth: in std_logic;
	pE: out std_logic); --output is 1 when there is an airport emergency (weather or fire)
end airportE;
 
architecture Behav of airportE is
signal p:std_logic;
begin
 
    process(clock) is
    begin
        if rising_edge(clock) then
			
            
            if reset = '1' then
					p<='0';
			elsif(fire='1' or weth='1') then
				p<='1';
			else
				p<='0';

			end if;
                        
        end if;
     pE<=p;
    end process;
 
end Behav;