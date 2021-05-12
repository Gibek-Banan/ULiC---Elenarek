library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity aktywna_anoda is
  port (
    we : in std_logic_vector(1 downto 0);
    wy : out std_logic_vector(3 downto 0)
  );
end aktywna_anoda;

architecture Behavioral of aktywna_anoda is

begin
  with we select
    wy <=
    "1110" when "00",
    "1101" when "01",
    "1011" when "10",
    "0111" when others;
end Behavioral;