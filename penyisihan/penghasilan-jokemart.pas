{===================================================================
  NPC Schematics 2014
  Penyisihan: Penghasilan Jokemart
  by Baharuddin Aziz
  September 3, 2016
 ===================================================================}
 
program penghasilan_jokemart;

{ DEKLARASI VARIABEL }
var
	M, N, O, P 	: integer;
	rerata		: real;
	
begin
	{ INISIALISASI VARIABEL }
	// membaca masukan user
	read(M,N,O,P);
	
	
	{ ALGORITMA }
	rerata := (M + N + O + P) / 4;
	writeln('Rp ', rerata:0:2);
end.
