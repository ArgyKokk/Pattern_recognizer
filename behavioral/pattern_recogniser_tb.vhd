-- Pattern Recogniser -- Behavioral Description Testbranch
-- pattern_recogniser_tb.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
library std;
use std.env.all;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- testbranch entity
entity pattern_recogniser_tb is
end pattern_recogniser_tb;

architecture behavior of pattern_recogniser_tb is

-- under test component
  component pattern_recogniser
    port ( 
           clk : in std_ulogic;
           data : in std_logic;
           reset : in std_logic;
           seg1 : out std_logic_vector(6 downto 0);
           seg2 : out std_logic_vector(6 downto 0)
         );
   end component;
   
   constant clk_half_period : time := 10 ns;
   signal clk : std_ulogic;
   signal data : std_logic;
   signal reset : std_logic;
   signal seg1 : std_logic_vector(6 downto 0);
   signal seg2 : std_logic_vector(6 downto 0);
   
   begin

   uut: pattern_recogniser port map (
             clk => clk,
             data => data,
             reset => reset,
             seg1 => seg1,
             seg2 => seg2
             );
-- generation clock , T=20ns   
  clk_gen : process is 
            begin
            clk <= '0' after clk_half_period , '1' after 2*clk_half_period;
            wait for 2*clk_half_period;
            end process clk_gen;
   
   tb :     process is
            begin

           reset <= '1';
           wait for 105 ns;

-- generation data pulses     
           for i in 0 to 109 loop
             data <= '1';
             wait for 80 ns;
             data <= '0';
             wait for 80 ns;
          end loop;

          assert false report "pattern generated 110 times" severity note;

-- performing a reset
          reset <= '0';
          wait for 305 ns;  
          reset <= '1';
          wait for 105 ns;

-- generating data pulses
         for i in 0 to 49 loop
            data <= '1';
            wait for 110 ns;
            data <= '0';
            wait for 80 ns;
         end loop;
         
         assert false report "pattern generated 50 times" severity note;

        finish(1);
     end process tb;
   end behavior;