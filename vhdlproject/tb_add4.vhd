library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- a testbench does not have any inputs or outputs
entity tb_add4 is
end tb_add4;
architecture behavioral of tb_add4 is
-- declare and initialize internal signals to drive the inputs of add4
signal a_i, b_i: std_logic_vector(3 downto 0) := (others => '0');
-- declare internal signals to read out the outputs of add4
signal sum_i: std_logic_vector(4 downto 0);
-- declare the expected output from the component under test
signal sum_true: std_logic_vector(4 downto 0) := (others => '0');
-- declare a signal to check if values match.
signal error_comp: std_logic := '0';
-- declare the add4 component
component add4
port(
a, b: in std_logic_vector(3 downto 0);
sum: out std_logic_vector(4 downto 0));
end component;
begin
-- instantiate the add4 component
-- map the signals in the testbench to the ports of the component
inst_add4: add4
port map( a => a_i,
b => b_i,
sum => sum_i);
-- stimulus process (without sensitivity list, but with wait statements)
stim: process
begin
wait for 10 ns;
a_i <= "1011"; -- 11
b_i <= "1100"; -- 12
sum_true <= "10111"; -- 23
error_comp <= '0';
wait for 10 ns;
if(sum_true /= sum_i) then
error_comp <= '1';
else
error_comp <= '0';
end if;
wait for 10 ns;
a_i <= "0101"; -- 5
b_i <= "1001"; -- 9
sum_true <= "01110"; -- 14
error_comp <= '0';
wait for 10 ns;
if(sum_true /= sum_i) then
error_comp <= '1';
elseerror_comp <= '0';
end if;
wait for 10 ns;
wait;
end process;
end behavioral;