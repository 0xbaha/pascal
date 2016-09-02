program if_then_multi_condition;

var
	input_value : integer;
	
begin
	read(input_value);
	
	if (input_value > 0) and (input_value mod 2 = 0) then
		writeln(input_value);
	
end.