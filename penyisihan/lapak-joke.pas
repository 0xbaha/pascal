{===================================================================
  NPC Schematics 2014
  Penyisihan: Lapak Joke
  by Baharuddin Aziz
  September 3, 2016
 ===================================================================}

program lapak_joke;

{ DEKLARASI VARIABEL }
var
	i : integer;				// variabel utk loop FOR
	N : integer;				// jumlah barang yg akan dijual [1..100]
	K : integer;				// jumlah pelanggan yg datang
	M : integer;				// nominal uang yg akan diberikan [1..100]
	keuntungan		: integer;	// nominal keuntungan
	barang_terjual	: integer;	// jumlah barang berhasil dijual
	penerima_uang	: integer;	// jumlah orang yg akan menerima uang
	
	harga_barang	: array [1..100] of integer; // harga barang yg dijual 
	
	
begin
	{ INISIALISASI VARIABEL }
	// inisialisasi variabel yg bukan masukan user
	i 				:= 0;
	j				:= 1;
	keuntungan 		:= 0;
	barang_terjual 	:= 0;
	penerima_uang 	:= 0;
	
	for i := 1 to 100 do
		harga_barang[i] := 0;
	
	// membaca masukan user
	read(N,M);					// nilai N dan M
	
	for i := 1 to N do			// nilai harga_barang
	begin
		read(harga_barang[i]);	// membaca nilai harga_barang
	end;
	
	readln(K);					// nilai K
	
	
	{ ALGORITMA }
	for i := 1 to N do
	begin
		keuntungan := keuntungan + harga_barang[i];
		barang_terjual := barang_terjual + 1;
	end;
	
	penerima_uang := K - barang_terjual;
	
	keuntungan := keuntungan - (penerima_uang * M);
	
	if ((keuntungan > 0) or (keuntungan = 0)) then
		writeln(keuntungan)
	else // keuntungan < 0
		writeln('Joko Rapopo');
end.