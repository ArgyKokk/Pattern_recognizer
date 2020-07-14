-- Pattern Recogniser --  pattern detection
-- list_det.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity list_det is
 port ( 
       clk  : in std_ulogic;
      reset : in std_logic;
      match : out std_ulogic;
      data : in std_logic   
);       
end list_det;


architecture behavior of list_det is

signal matchValue : std_ulogic := '0';
begin
 process(clk,reset)

 variable Q : std_logic_vector(4 downto 0);

 begin
-- reset initialization
  if reset='0' then
     matchValue <= '0';
  elsif (rising_edge(clk) and (reset='1')) then
     Q(4 downto 1) := Q(3 downto 0);
     Q(0) := data;
  if(Q(3 downto 0) = "1110") then
      matchValue <= '1';
  else
      matchValue <='0';
  end if ; 
end if;
end process;

process(data,matchValue)
 begin
 match <= matchValue and (not data); 
 end process;
end behavior;