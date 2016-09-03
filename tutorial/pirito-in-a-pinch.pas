{===================================================================
  NPC Schematics 2016
  Tutorial: Pirito in a Pinch
  by Baharuddin Aziz
  September 3, 2016
 ===================================================================}
 
program pirito_in_a_pinch;

{ DEKLARASI VARIABEL }
var
	// input
	m : integer;	// jarak Pirito dan kota
	n :	integer;	// kecepatan jalan per menit
	x : integer;	// berhenti setiap jarak x
	
	// output
	durasi : real;	// durasi utk berjalan ke kota
	
begin
	{ INISIALISASI VARIABEL }
	// membaca masukan user
	read(m,n,x);
	
	{ ALGORITMA }
	if (m mod x <> 0) then
	begin
		durasi := (m div n) + (m div x) * 0.5;
		writeln(durasi:0:3);
	end
	else
	begin
		durasi := (m div n) + (m div x - 1) * 0.5;
		writeln(durasi:0:3);
	end;

end.
