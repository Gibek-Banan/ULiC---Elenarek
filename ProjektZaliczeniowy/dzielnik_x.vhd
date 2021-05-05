library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity dzielnik_x is
  port (
    clk : in std_logic;
    wy  : out std_logic);
end dzielnik_x;

architecture Behavioral of dzielnik_x is
  signal licznik : std_logic_vector (7 downto 0) := "00000000";
begin
  process (clk)
  begin
    if clk = '1' and clk'event then
      if licznik = "11111111" then
        licznik <= "00000000"
          else
          licznik <= licznik + 1;
      end if;
    end if;
  end process;
  wy = licznik(7);
end Behavioral;