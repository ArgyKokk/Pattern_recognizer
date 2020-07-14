-- Pattern Recogniser -- Behavioral Description
-- pattern_recogniser.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--  pattern recognition entity
entity pattern_recogniser is
 port ( 
       clk  : in std_ulogic;
       data : in std_logic   ;
      reset : in std_logic  ;
       seg1 : out std_logic_vector(0 to 6);
       seg2 : out std_logic_vector(0 to 6)
      
);     
end pattern_recogniser;


architecture behavior of pattern_recogniser is
begin

 process(clk,reset)
-- variables used as counters or flags for the pattern recognition part

 variable trigger : integer range 0 to 500;
 variable foundPattern : integer := 0;
 variable triggeringSignal : integer := 0;
 variable counter_seg1 : integer range 0 to 9;
 variable counter_seg2 : integer range 0 to 9;
 variable Q : std_logic_vector(4 downto 0);
 begin
-- asychronous reset , initialization
 if reset='0' then

    seg1 <= "0111111";
    seg2 <= "0111111";
    trigger := 0;
    counter_seg1 := 0;
    counter_seg2 := 0;
    Q(4 downto 0 ) := "00000";
-- checking for the pattern at every rising edge
 elsif (rising_edge(clk)) and (reset='1') then

     Q(4 downto 1) := Q(3 downto 0);
     Q(0) := data;

  if(Q(4 downto 0)="11100") then

     trigger := trigger + 1;
-- overflow check
     if trigger > 99 then
        seg1 <= "1000000";
        seg2 <= "1000000";
     else   
        counter_seg1 := trigger / 10 ;
        counter_seg2 := trigger mod 10;

-- translating the values for the LED segments
     if counter_seg1 = 0 then
        seg1 <= "0111111";
     elsif counter_seg1 = 1 then
        seg1 <= "0011000";
     elsif counter_seg1 = 2 then
        seg1 <= "1101101";
     elsif counter_seg1 = 3 then
        seg1 <= "1111100";
     elsif counter_seg1 = 4 then
        seg1 <= "1011010";
     elsif counter_seg1 = 5 then
        seg1 <= "1110110";
     elsif counter_seg1 = 6 then
        seg1 <= "1110111";
     elsif counter_seg1 = 7 then
        seg1 <= "0011100";
     elsif counter_seg1 = 8 then
        seg1 <= "1111111";
     elsif counter_seg1 = 9 then
        seg1 <= "1111110";
     end if;

     if counter_seg2 = 0 then
        seg2 <= "0111111";
     elsif counter_seg2 = 1 then
        seg2 <= "0011000";
     elsif counter_seg2 = 2 then
        seg2 <= "1101101";
     elsif counter_seg2 = 3 then
        seg2 <= "1111100";
     elsif counter_seg2 = 4 then
        seg2 <= "1011010";
     elsif counter_seg2 = 5 then
        seg2 <= "1110110";
     elsif counter_seg2 = 6 then
       seg2 <= "1110111";
     elsif counter_seg2 = 7 then
       seg2 <= "0011100";
     elsif counter_seg2 = 8 then
       seg2 <= "1111111";
     elsif counter_seg2 = 9 then
       seg2 <= "1111110";
     end if;
 end if; 
end if;
end if;
end process;
end behavior;


     