-- Pattern Recogniser -- Structural Description Testbranch
-- pattern_recogniser_str_tb.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
library std;
use std.env.all;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pattern_recogniser_str_tb is
end pattern_recogniser_str_tb;

architecture behavior of pattern_recogniser_str_tb is

-- adding components
  component pattern_recogniser_str
    port ( 
       clk  : in std_ulogic;
       data : in std_logic   ;
      reset : in std_logic  ;
       seg1 : out std_logic_vector(0 to 6);
       seg2 : out std_logic_vector(0 to 6)
         );
   end component;

-- signals to be monitored
     constant clk_half_period : time := 10 ns;
     signal clk : std_ulogic;
     signal data : std_logic;
     signal reset : std_logic;
     signal seg1 : std_logic_vector(0 to 6);
     signal seg2 : std_logic_vector(0 to 6);

   begin

   uut: pattern_recogniser_str port map (
             clk => clk,
             data => data,
             reset => reset,
             seg1 => seg1,
             seg2 => seg2
             );
-- generating clock , T=20ns
   clk_gen : process is 
         begin
         clk <= '0' after clk_half_period , '1' after 2*clk_half_period;
         wait for 2*clk_half_period;
   end process clk_gen;
   
   tb : process is

      begin

      wait for 150 ns;
      reset <= '1';
      wait for 105 ns;

      for i in 0 to 109 loop
        data <= '1';
        wait for 60 ns;
        data <= '0';
        wait for 40 ns;
      end loop;

      assert false report " pattern generated 110 times " severity note;

-- applying a reset
      reset <= '0';
      wait for 305 ns;
      reset <= '1';
      wait for 105 ns;

      for i in 0 to 49 loop
        data <= '1';
        wait for 110 ns;
        data <= '0';
        wait for 90 ns;
      end loop;
      
       assert false report " pattern generated 50 times " severity note;

      finish(1);
     end process tb;
  end behavior;
