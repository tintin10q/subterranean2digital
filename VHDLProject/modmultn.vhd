----------------------------------------------------------------------------------
-- Summer School on Real-world Crypto & Privacy - Hardware Tutorial 
-- Sibenik, June 11-15, 2018 
-- 
-- Author: Nele Mentens
-- Updated by Pedro Maat Costa Massolino
--  
-- Module Name: modmultn
-- Description: n-bit modular multiplier (through the left-to-right double-and-add algorithm)
----------------------------------------------------------------------------------

-- include the STD_LOGIC_1164 package in the IEEE library for basic functionality
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- include the NUMERIC_STD package for arithmetic operations
use IEEE.NUMERIC_STD.ALL;

-- describe the interface of the module
-- product = b*a mod p
entity modmultn is
    generic(
        n: integer := 8;
        log2n: integer := 3);
    port(
        a, b, p: in std_logic_vector(n-1 downto 0);
        rst, clk, start: in std_logic;
        product: out std_logic_vector(n-1 downto 0);
        done: out std_logic);
end modmultn;

-- describe the behavior of the module in the architecture
architecture behavioral of modmultn is

-- declare internal signals
signal a_reg, b_reg, p_reg: std_logic_vector(n-1 downto 0);
signal shift, b_left: std_logic;

begin

-- store the inputs 'a', 'b' and 'p' in the registers 'a_reg', 'b_reg' and 'p_reg', respectively, if start = '1'
-- the registers have an asynchronous reset
-- rotate the content of 'b_reg' one position to the left if shift = '1'
reg_a_b_p: process(rst, clk)
begin
    if rst = '1' then
        a_reg <= (others => '0');
        b_reg <= (others => '0');
        p_reg <= (others => '0');
    elsif rising_edge(clk) then
        if start = '1' then
            a_reg <= a;
            b_reg <= b;
            p_reg <= p;
        elsif shift = '1' then
            b_reg <= b_reg(n-2 downto 0) & b_reg(n-1);
        end if;
    end if;
end process;

b_left <= b_reg(n-1);

end behavioral;