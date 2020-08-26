program floor_and_ceiling;

var
	input_value : real;
	floor_value, ceiling_value, temp: integer;
	
begin
	read(input_value);
	
	temp := round(input_value);
	
	if temp < input_value then
	begin 
		floor_value := temp;
		ceiling_value := temp + 1;
	end
	else if temp > input_value then
	begin
		ceiling_value := temp;
		floor_value := temp - 1;
	end
	else
	begin	
		ceiling_value := temp;
		floor_value := temp;
	end;
		
	writeln(floor_value, ' ', ceiling_value);
	
end.