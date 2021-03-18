----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:48:34 03/14/2021 
-- Design Name: 
-- Module Name:    RR_Kolowy - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RR_Kolowy is
    Port ( clock : in  STD_LOGIC;
           we : in  STD_LOGIC_VECTOR (7 downto 0);
           wy : out  STD_LOGIC_VECTOR (7 downto 0);
           SW1 : in  STD_LOGIC);
end RR_Kolowy;

architecture Behavioral of RR_Kolowy is
signal rej_wew : STD_LOGIC_VECTOR (7 downto 0);
begin
	process(clock)
		begin
			if clock'event and clock = '1' then
				if SW1 = '1' then
					rej_wew<=we;
				else
					rej_wew(0)<=rej_wew(1);
					rej_wew(1)<=rej_wew(2);
					rej_wew(2)<=rej_wew(3);
					rej_wew(3)<=rej_wew(4);
					rej_wew(4)<=rej_wew(5);
					rej_wew(5)<=rej_wew(6);
					rej_wew(6)<=rej_wew(7);
					rej_wew(7)<=rej_wew(0);
				end if;
			end if;
	end process;
wy<=rej_wew;
end Behavioral;

