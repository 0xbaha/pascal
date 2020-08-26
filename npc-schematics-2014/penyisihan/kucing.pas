{===================================================================
  NPC Schematics 2014
  Penyisihan: Kucing
  by Baharuddin Aziz
  September 3, 2016
 ===================================================================}

program kucing;

uses math;

{ DEKLARASI VARIABEL }
var
	N : integer;
	jumlah_kucing : float;
	
begin
	{ INISIALISASI VARIABEL }
	// membaca masukan user
	read(N);
	
	{ ALGORITMA }
	jumlah_kucing := power(2,N);
	writeln(jumlah_kucing:0:0);
end.