program luas_segitiga;

var
	alas : integer;
	tinggi : integer;
	luas : real;

begin
	read(alas);
	read(tinggi);

	luas := 0.5 * alas * tinggi;

	writeln(luas:0:2);
end.
