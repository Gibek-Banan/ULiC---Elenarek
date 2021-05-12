library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity dzielnik_400Hz_na_10Hz is
  port (
    clk : in std_logic;
    wy  : out std_logic);
end dzielnik_400Hz_na_10Hz;

architecture Behavioral of dzielnik_400Hz_na_10Hz is
  signal licznik : std_logic_vector (5 downto 0) := "000000";
begin
  process (clk)
  begin
    if clk = '1' and clk'event then
      if licznik = "101000" then
        licznik <= "000000";
          else
          licznik <= licznik + 1;
      end if;
    end if;
  end process;
  wy <= licznik(5);
end Behavioral;