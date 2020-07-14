-- Pattern Recogniser -- Automated Testing Testbranch
-- testing.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
library std;
use std.env.all;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity testing is
port (
   clk :  inout std_ulogic;
   reset : inout  std_ulogic;
   data : inout std_logic
);
end testing;

architecture behavior of testing is

   constant clk_half_period : time := 10 ns;
  
   begin


-- generating clock , T=20ns
   clk_gen : process is 
         begin
         clk <= '0' after clk_half_period , '1' after 2*clk_half_period;
         wait for 2*clk_half_period;
   end process clk_gen;
   
   tb : process is
      begin
    
-- performing a reset
     wait for 150 ns;
      reset <= '0';
     wait for 350 ns;
      reset <= '1';
     wait for 105 ns;

      for i in 0 to 109 loop
        data <= '1';
        wait for 60 ns;
        data <= '0';
        wait for 40 ns;
      end loop;

      assert false report " pattern generated 110 times" severity note;

      reset <= '0';
      wait for 305 ns;
      reset <= '1';
      wait for 105 ns;

      for i in 0 to 49 loop
        data <= '1';
        wait for 110 ns;
        data <= '0';
        wait for 80 ns;
      end loop;

      assert false report " pattern generated 50 times" severity note;
     
      finish(1);
     end process tb;
   end behavior;
