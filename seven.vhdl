library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven is 
  port(
      S : in unsigned(3 downto 0);
      segments : out std_logic_vector(6 downto 0)
      );
end seven; 
    
architecture behavior of seven is
  
  signal f : std_logic;
  
begin 
  
  f <= S(3) and S(2) and S(1) and S(0);
  
    segments(6) <= f;
    segments(5) <= f;
    segments(4) <= f;
    segments(3) <= f;
    segments(2) <= f;
    segments(1) <= f;
    segments(0) <= f;
end behavior;
