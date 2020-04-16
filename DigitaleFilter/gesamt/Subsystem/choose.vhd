LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY choose IS
  PORT(
  input_0:IN UNSIGNED(13 downto 0);
  input_1:IN UNSIGNED(13 downto 0);
  input_2:IN UNSIGNED(13 downto 0);
  input_3:IN UNSIGNED(13 downto 0);
  clk:IN STD_LOGIC;
  filter_type2:IN STD_LOGIC_VECTOR(1 downto 0);
  output_final:OUT UNSIGNED(13 downto 0)
  );
  END choose;
  
  ARCHITECTURE Behavior OF choose IS
  BEGIN
    PROCESS_choose:PROCESS(clk,filter_type2)
    BEGIN
	 IF rising_edge(clk) THEN
	   CASE filter_type2 IS
		WHEN "00" => output_final<=input_0; --TP
		WHEN "01" => output_final<=input_1; --HP
		WHEN "10" => output_final<=input_2; --BP
		WHEN "11" => output_final<=input_3; --BS 
		END CASE;
	 END IF;
	END PROCESS;
  END Behavior;	
		
  
  
  
  