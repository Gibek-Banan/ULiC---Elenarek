----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:26:39 03/14/2021 
-- Design Name: 
-- Module Name:    SzR - Behavioral 
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

entity SzR is
    Port ( clock : in  STD_LOGIC;
           we : in  STD_LOGIC;
           wy : out  STD_LOGIC_VECTOR (7 downto 0));
end SzR;

architecture Behavioral of SzR is
signal rejestr:STD_LOGIC_VECTOR (7 downto 0):="00000000";
begin
	process(clock)
		begin
			if clock'event and clock = '1' then
				rejestr(0)<=we;
				rejestr(1)<=rejestr(0);
				rejestr(2)<=rejestr(1);
				rejestr(3)<=rejestr(2);
				rejestr(4)<=rejestr(3);
				rejestr(5)<=rejestr(4);
				rejestr(6)<=rejestr(5);
				rejestr(7)<=rejestr(6);
			end if;
		end process;
wy<=rejestr;

end Behavioral;

