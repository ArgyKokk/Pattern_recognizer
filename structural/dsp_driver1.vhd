-- Pattern Recogniser --  Description segment display driver 1
-- dsp_driver1.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dsp_driver1 is
 port ( 
       bcd1 : in std_logic_vector(3 downto 0);
       seg1 : out std_logic_vector(0 to 6)
);       
end dsp_driver1;

architecture behavior of dsp_driver1 is

type lut1 is array ( 0 to 10) of std_logic_vector(6 downto 0);
 constant seg_lut: lut1 := (
    0 => "0111111",
    1 => "0011000",
    2 => "1101101",
    3 => "1111100",
    4 => "1011010",
    5 => "1110110",
    6 => "1110111",
    7 => "0011100",
    8 => "1111111",
    9 => "1111110",
    10 => "1000000"
     );
 function tointeger( s : std_logic ) return natural is
begin
      if s = '1' then
      return 1;
   else
      return 0;
   end if;
end function;
 
 begin

 process(bcd1)
 
variable num : integer range 0 to 10;
 begin
  num := tointeger(bcd1(0)) + tointeger( bcd1(1)) * 2 + tointeger(bcd1(2)) *4 + tointeger( bcd1(3)) * 8;
  seg1 <= seg_lut(num);
 
 end process;
end behavior;