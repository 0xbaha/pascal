program jarak_manhattan;

var
	x1, x2, y1, y2, jarak : longint;
	
begin
	read(x1);
	read(y1);
	read(x2);
	read(y2);
	
	jarak := abs(x1 - x2) + abs(y1 - y2);
	
	writeln(jarak);
	
end.