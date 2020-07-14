-- Pattern Recogniser -- Automated Testing compare Behavioral Vs Structural
-- compare.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

-- creating compare entity
entity compare is
port (
       clk : in std_ulogic;
       reset : in std_logic;
       seg1 : in std_logic_vector(0 to 6);
       seg2 : in std_logic_vector(0 to 6);
       seg1B : in std_logic_vector(0 to 6);
       seg2B : in std_logic_vector(0 to 6)
);
end compare;

architecture behavior of compare is
begin

process(clk,reset)

variable seg1Value : std_logic_vector(0 to 6);
variable seg2Value : std_logic_vector(0 to 6);

begin
if (rising_edge(clk)) and (reset='1') then
  seg1Value := seg1 xor seg1B;
  seg2Value := seg2 xor seg2B;
  assert (seg1Value = "0000000") or (seg2Value = "0000000") report " DIFFERENCE " severity note;

elsif reset = '0' then
  seg1Value := "0000000";
  seg2Value := "0000000";
end if;
end process;
end behavior;
     
