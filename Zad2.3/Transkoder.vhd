library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_arith.all;
use IEEE.STD_LOGIC_unsigned.all;

entity Transkoder is
  port (
    wej : in std_logic_vector (3 downto 0);
    clk : in std_logic;
    wyj : out std_logic_vector (6 downto 0);
    led : out std_logic_vector (3 downto 0));
end Transkoder;
architecture Behavioral of Transkoder is
  signal licznik : std_logic_vector (1 downto 0) := "00";
begin
  process (clk)
  begin
    if clk'event and clk = '1' then
      licznik <= licznik + 1;
    end if;
  end process;
  with licznik select
    led <= "0111" when "00",
    "1011" when "01",
    "1101" when "10",
    "1110" when "11",
    "1111" when others;
  with wej select
    wyj <= "1000000" when "0000",
    "1111001" when "0001", --1
    "0100100" when "0010", --2
    "0110000" when "0011", --3
    "0011001" when "0100", --4
    "0010010" when "0101", --5
    "0000010" when "0110", --6
    "1111000" when "0111", --7
    "0000000" when "1000", --8
    "0010000" when "1001", --9
    "0001000" when "1010", --A
    "0000011" when "1011", --B
    "1000110" when "1100", --C
    "0100001" when "1101", --d
    "0000110" when "1110", --E
    "0001110" when "1111", --F
    "1111111" when others; --transk
end Behavioral;