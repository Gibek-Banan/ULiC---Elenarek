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
--Nasze:
--SW1 gdy 1 wprowadza dane równolegle do rejestru z wejœæ zewnêtrznych, gdy 0 przesuwa je
--w lewo realizuj¹c rejestr ko³owy ( wartoœci kr¹¿¹ w takt SW0)

--Pawel_Daniel:
--SW1 gdy 1 wprowadza dane równolegle do rejestru z wejœæ zewnêtrznych, gdy 0 przesuwa je
--w lewo wprowadzaj¹c wartoœæ 0 na najm³odszy bit rejestr. 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

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
					rej_wew(7)<=rej_wew(0);
					rej_wew(6)<=rej_wew(7);
					rej_wew(5)<=rej_wew(6);
					rej_wew(4)<=rej_wew(5);
					rej_wew(3)<=rej_wew(4);
					rej_wew(2)<=rej_wew(3);
					rej_wew(1)<=rej_wew(2);
					rej_wew(0)<=rej_wew(1);
				end if;
			end if;
	end process;
wy<=rej_wew;
end Behavioral;

