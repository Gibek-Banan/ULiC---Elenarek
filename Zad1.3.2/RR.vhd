----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:39:26 03/14/2021 
-- Design Name: 
-- Module Name:    RR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RR is
    Port ( clock : in  STD_LOGIC;
           we : in  STD_LOGIC_VECTOR (7 downto 0);
           wy : out  STD_LOGIC_VECTOR (7 downto 0));
end RR;

architecture Behavioral of RR is

begin
	process(clock)
		begin
			if clock'event and clock = '1' then
				wy<=we;
			end if;
		end process;

end Behavioral;

