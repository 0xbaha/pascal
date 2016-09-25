{===================================================================
  NPC Schematics 2016
  Warming Up: Magic Wand (Again)
  by Baharuddin Aziz
  September 25, 2016
 ===================================================================}
 
program magic_wand_again;
 
{ DEKLARASI VARIABEL }
var
	// input
	Ni : longint;									// jumlah tongkat pada loker i
	k  : longint;									// variabel untuk array
	j  : longint;									// variabel untuk loop
	m  : longint;									// variabel untuk loop
	n  : longint;									// variabel untuk loop
	minIndex : longint;								// indeks nilai terkecil
	
	// process & output
	tabel_tongkat : array[1..1000000] of longint;	// tabel jumlah tongkat pada loker
	
{ DEKLARASI FUNGSI/PROSEDUR }
procedure swap(var x1,x2:longint);
var x : longint;
begin
	x  := x1;
	x1 := x2;
	x2 := x;
end;
	
begin
	{ INISIALISASI VARIABEL }
	// inisialisasi
	j := 1;
	
	// membaca masukan user
	read(Ni);
	while (Ni >= 1) and (Ni <= 1000000) do
	begin
		tabel_tongkat[j] := Ni;
		j := j + 1;
		read(Ni);
	end;

	{ ALGORITMA }
	// PROSES: Pengurutan Isi Tabel Menggunakan Selection Sort
	for m := 1 to j-1 do
	begin
		// pencarian indeks terkecil
		minIndex := m;
		for n := m + 1 to j-1 do
		begin
			if tabel_tongkat[n] < tabel_tongkat[minIndex] then
			begin
				minIndex := n;
			end;
		end;
		
		// tukar
		swap(tabel_tongkat[m], tabel_tongkat[minIndex])
	end;
	
	// PROSES: Penulisan Isi Tabel Terurut
	for m := 1 to j-1 do
	begin
		writeln(tabel_tongkat[m]);
	end;
end.