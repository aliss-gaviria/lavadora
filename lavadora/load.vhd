library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity load is
    Port (
        clk       : in  STD_LOGIC;      
        reset     : in  STD_LOGIC;      
        load_ciclo: in  STD_LOGIC;     
        load      : out STD_LOGIC       
    );
end load;

architecture arch of load is
    signal counter : INTEGER := 0;  
    signal active  : BOOLEAN := FALSE; 
begin

    process(clk, reset,load_ciclo)
    begin
        if reset = '0' then
            load <= '0';            
            counter <= 0;          
            active <= FALSE;       
        elsif rising_edge(clk) then
            if load_ciclo = '1' and active = FALSE then
                load <= '1';        
                counter <= counter + 1;
                if counter = 10000 then  
                    active <= TRUE;  
                    counter <= 0;    
                end if;
            elsif active = TRUE then
                load <= '0';        
                counter <= counter + 1; 
                if counter = 10000 then
                    active <= FALSE; 
                end if;
            end if;
        end if;
    end process;

end arch;




