-- Pattern Recogniser --  Description Counter
-- counter.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity counter is
 port ( 
       clk  : in std_ulogic;
      reset : in std_logic;
      match : in std_ulogic;
       bcd1 : out std_logic_vector(3 downto 0);
       bcd2 : out std_logic_vector(3 downto 0)
);       
end counter;

architecture behavior of counter is
 
 type lut is array ( 0 to 10) of std_logic_vector(3 downto 0);
 constant bcd_lut: lut := (
    0 => "0000",
    1 => "0001",
    2 => "0010",
    3 => "0011",
    4 => "0100",
    5 => "0101",
    6 => "0110",
    7 => "0111",
    8 => "1000",
    9 => "1001",
    10 => "1010"
     ); 
 begin
 
 process(clk,reset,match)

-- variables counters
 variable trigger : integer range 0 to 500;
 variable counter_seg1 : integer range 0 to 9;
 variable counter_seg2 : integer range 0 to 9;
  begin
  if reset = '0' then
     bcd1 <= "0000";
     bcd2 <= "0000";
     trigger := 0 ;
     counter_seg1 := 0;
     counter_seg2 := 0;
  elsif (rising_edge(clk)) and (match='1')  then
     
     trigger := trigger + 1;

-- checking for overflow
     if trigger > 99 then
        bcd1 <= bcd_lut(10);
        bcd2 <= bcd_lut(10);
     else
        counter_seg1 := trigger / 10;
        counter_seg2 := trigger mod 10;
        bcd1 <= bcd_lut(counter_seg1);
        bcd2 <= bcd_lut(counter_seg2);
    end if;
 end if;
 end process;
end behavior;

