-- Pattern Recogniser -- Structural Description display driver segment 2
-- dsp_driver2.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dsp_driver2 is
 port ( 
       bcd2 : in std_logic_vector(3 downto 0);
       seg2 : out std_logic_vector(0 to 6)
);
       
end dsp_driver2;

architecture behavior of dsp_driver2 is

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
 
  process(bcd2)
  variable num : integer range 0 to 10;

 begin
 num := tointeger(bcd2(0)) + tointeger( bcd2(1)) * 2 + tointeger(bcd2(2)) *4 + tointeger( bcd2(3)) * 8;
 seg2 <= seg_lut(num);

 end process;
end behavior;