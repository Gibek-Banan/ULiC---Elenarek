library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Automat is
  port (
    clk    : in std_logic;
    reset  : in std_logic;
    k      : in std_logic;
    stan_q : out std_logic);
end;

architecture Behavioral of Automat is
  type state_type is (state_0, state_1, state_2, state_3, state_4, state_5, state_6);
  signal stan : state_type := state_0;
begin
  Automat_proc : process (clk, reset)
  begin
    if reset = '0' then
      stan <= state_0;
    elsif clk'event and clk = '1' then
      case stan is

        when state_0 =>
          if k = '1' then
            stan <= state_1;
          else
            stan <= state_0;
          end if;

        when state_1 =>
          if k = '1' then
            stan <= state_1;
          else
            stan <= state_2;
          end if;

        when state_2 =>
          if k = '1' then
            stan <= state_3;
          else
            stan <= state_0;
          end if;

        when state_3 =>
          if k = '1' then
            stan <= state_1;
          else
            stan <= state_4;
          end if;

        when state_4 =>
          if k = '1' then
            stan <= state_1;
          else
            stan <= state_5;
          end if;
			 
			when state_5 =>
          if k = '1' then
            stan <= state_1;
          else
            stan <= state_6;
          end if;
			 
			when state_6 =>
          if k = '1' then
            stan <= state_1;
          else
            stan <= state_0;
          end if;
      end case;
    end if;
  end process;

  with stan select
    stan_q <= '1' when state_6,
    '0' when others;

end Behavioral;