{===================================================================
  NPC Schematics 2016
  Tutorial: Halo Schematics
  by Baharuddin Aziz
  September 4, 2016
 ===================================================================}

program halo_schematics;

{ DEKLARASI VARIABEL }
var
	// input
	N : integer;				// jumlah pengulangan
	
	// process
	i				: integer;	// variabel utk pengulangan FOR	
	suku_kata_awal	: string;	// suku kata 'Halo Schema'
	suku_kata_akhir	: string;	// suku kata 'tics'
	temp			: string;	// menampung suku 'tics' sebelum digabung
	
	// output
	suku_kata_total	: string;	// hasil penggabungan
	
begin
	{ INISIALISASI VARIABEL }
	// inisialisasi masukan yg bukan dari user
	suku_kata_awal	:= 'Halo Schema';
	suku_kata_akhir	:= 'tics';
	suku_kata_total	:= suku_kata_awal;
	
	// membaca masukan user
	read(N);
	
	{ ALGORITMA }
	// proses penggabungan
	for i := 1 to N do
		suku_kata_total := suku_kata_total + suku_kata_akhir;
	
	// menuliskan hasil penggabungan
	writeln(suku_kata_total);
end.