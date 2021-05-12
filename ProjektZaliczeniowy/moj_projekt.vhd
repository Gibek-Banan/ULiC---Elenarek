library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
entity moj_projekt is
  port (
    clk          : in std_logic;
    sw0          : in std_logic;
    sw1          : in std_logic;
    b0           : in std_logic;
    b1           : in std_logic;
    wy_ds        : out std_logic_vector (3 downto 0);
    wy_s_j       : out std_logic_vector (3 downto 0);
    wy_s_dz      : out std_logic_vector (3 downto 0);
    wy_min       : out std_logic_vector (3 downto 0)
  );
end moj_projekt;

architecture Behavioral of moj_projekt is
  signal ds        : std_logic_vector (3 downto 0) := "0000";
  signal s_j       : std_logic_vector (3 downto 0) := "0000";
  signal s_dz      : std_logic_vector (3 downto 0) := "0000";
  signal min       : std_logic_vector (3 downto 0) := "0000";
  signal StartStop : std_logic;
begin
  process (clk)
  begin
    if sw0 = '0' then --else do nothing --by default if sw0=0 stopwatch1 is ON and stopwatch2 is OFF
      --sw1 = 1
      if sw1 = '1' then
        if b0 = '0' then --active 0
          StartStop <= '1';
        end if;
        if b1 = '0' then --active 0
          StartStop <= '0';
        end if;
      end if;

      --sw1 = 0
      if sw1 = '0' then
        if b0 = '0' then --active 0
          ds   <= "0000";
          s_j  <= "0000";
          s_dz <= "0000";
          min  <= "0000";
        end if;
      end if;

      if StartStop = '1' then
        if rising_edge(clk) then
          if min /= 9 and s_dz /= 5 and s_j /= 9 and ds /= 9 then
            if ds = "1001" then
              ds  <= "0000";
              s_j <= s_j + 1;
            end if;

            if s_j = "1001" then
              s_j  <= "0000";
              s_dz <= s_dz + 1;
            end if;

            if s_dz = "0101" then
              s_dz <= "0000";
              min  <= min + 1;
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;
  wy_ds   <= ds;
  wy_s_j  <= s_j;
  wy_s_dz <= s_dz;
  wy_min  <= min;
end Behavioral;