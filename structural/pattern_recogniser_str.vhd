-- Pattern Recogniser -- Structural Description
-- pattern_recogniser_str.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--  pattern recognition entity
entity pattern_recogniser_str is
 port ( 
       clk  : in std_ulogic;
       data : in std_logic   ;
      reset : in std_logic  ;
       seg1 : out std_logic_vector(0 to 6);
       seg2 : out std_logic_vector(0 to 6)
      
);     
end pattern_recogniser_str;

architecture behavior of pattern_recogniser_str is

component list_det
    port ( 
           clk : in std_ulogic;
           reset : in std_logic;
           match : out std_ulogic;
           data : in std_logic
         );
end component;

component counter is
 port ( 
       clk  : in std_ulogic;
      reset : in std_logic;
      match : in std_ulogic;
       bcd1 : out std_logic_vector(3 downto 0);
       bcd2 : out std_logic_vector(3 downto 0)
);       
end component;

component dsp_driver1
 port(
       bcd1 : in std_logic_vector(0 to 3);
       seg1 : out std_logic_vector(0 to 6)
     );
end component;

component dsp_driver2
 port(
       bcd2 : in std_logic_vector(0 to 3);
       seg2 : out std_logic_vector(0 to 6)
     );
end component;

signal match : std_ulogic;
signal bcd1 : std_logic_vector(3 downto 0);
signal bcd2 : std_logic_vector(3 downto 0);

begin


u1: list_det 
port map(
 clk => clk,
 reset => reset,
 data => data,
 match => match
);

u2: counter
port map(
 clk => clk,
 reset => reset,
 match => match,
 bcd1 => bcd1,
 bcd2 => bcd2
);

u3: dsp_driver1
port map(
 bcd1 => bcd1,
 seg1 => seg1
);

u4: dsp_driver2
port map(
 bcd2 => bcd2,
 seg2 => seg2
);
end behavior;