library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity branch_mux is
  Port ( 
        ctrl: in STD_LOGIC;
        zero: in STD_LOGIC;
        y: out STD_LOGIC);
end branch_mux;

architecture Behavioral of branch_mux is

begin

    process
    begin
        if (ctrl='1') then
            y <= zero;
        else
            y <= not zero;
        end if;
    end process;

end Behavioral;
