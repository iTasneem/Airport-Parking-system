library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
entity Timer is

port(
    Clk     : in std_logic;
    Rst    : in std_logic; 
    Seconds : in integer;
	f    : out std_logic); --output of timer 1 when count reach time parameter
end Timer;
 
architecture rtl of Timer is
 
    
    signal Ticks : integer;
 
begin
 
    process(Clk) is
    begin
        if rising_edge(Clk) then
			
            -- If the negative reset signal is active
            if Rst = '1' then
                Ticks <= 0;
				f<='0';
				
            elsif ticks<Seconds then
              Ticks <= Ticks + 1;
			  f<='0';
			
			else
				f<='1';
				end if;
                        
        end if;
     
    end process;
 
end rtl;