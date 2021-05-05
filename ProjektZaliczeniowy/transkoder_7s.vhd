library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity transkoder_7s is
    port (
        we : in std_logic_vector (3 downto 0);
        wy : in std_logic_vector (6 downto 0);
    );
end transkoder_7s;

architecture Behavioral of transkoder_7s is
begin
    with we select
    wy <=
    "1000000" when "0000", --0
    "1111001" when "0001", --1
    "0100100" when "0010", --2
    "0110000" when "0011", --3
    "0011001" when "0100", --4
    "0010010" when "0101", --5
    "0000010" when "0110", --6
    "1111000" when "0111", --7
    "0000000" when "1000", --8
    "0010000" when "1001", --9
end Behavioral;