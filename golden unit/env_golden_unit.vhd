-- Pattern Recogniser --
-- env_golden_unit.vhd
-- February 2019
-- Design of Digital Systems
-- University of Twente


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--  env_golden_unit entity
entity env_golden_unit is   
end env_golden_unit;

architecture behavior of env_golden_unit is

component testing
port(
   clk : inout std_ulogic;
   data : inout std_logic;
   reset : inout std_logic
    );
end component;

component pattern_recogniser_str
  port(
       clk  : in std_ulogic;
       data : in std_logic;
      reset : in std_logic;
       seg1 : out std_logic_vector(0 to 6);
       seg2  : out std_logic_vector(0 to 6)
      );
end component;

component pattern_recogniser
 port ( 
       clk  : in std_ulogic;
       data : in std_logic   ;
      reset : in std_logic  ;
       seg1 : out std_logic_vector(0 to 6);
       seg2 : out std_logic_vector(0 to 6)
      
);
 end component;

component compare
 port (
       clk : in std_ulogic;
       reset : in std_logic;
       seg1 : in std_logic_vector(0 to 6);
       seg2 : in std_logic_vector(0 to 6);
       seg1B : in std_logic_vector(0 to 6);
       seg2B : in std_logic_vector(0 to 6)
);
 end component;

signal clk : std_ulogic;
signal reset : std_logic;
signal data: std_logic;
signal seg1 : std_logic_vector(0 to 6);
signal seg2 : std_logic_vector(0 to 6);
signal seg1B : std_logic_vector(0 to 6);
signal seg2B : std_logic_vector(0 to 6);



begin

u1 : testing
port map(
  clk => clk,
  data => data,
  reset => reset
); 

u2 : pattern_recogniser
port map(
  clk => clk,
  data => data,
  reset => reset,
  seg1 => seg1B,
  seg2 => seg2B
); 

u3 : pattern_recogniser_str
port map(
  clk => clk,
  data => data,
  reset => reset,
  seg1 => seg1,
  seg2 => seg2
); 

u4 : compare
port map(
  clk => clk,
  reset => reset,
  seg1 => seg1,
  seg2 => seg2,
  seg1B => seg1B,
  seg2B => seg2B
); 

end behavior;