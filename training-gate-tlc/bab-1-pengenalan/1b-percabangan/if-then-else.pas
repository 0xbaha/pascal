program if_then_else;

var
	input_value : integer;
	
begin
	read(input_value);

	if input_value > 0 then
		writeln('positif')
	else if input_value < 0 then
		writeln('negatif')
	else
		writeln('nol');
end.
