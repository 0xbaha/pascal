{===================================================================
  NPC Schematics 2016
  Tutorial: The Ancient Treasure
  by Baharuddin Aziz
  September 3, 2016
 ===================================================================}

program the_ancient_treasure;

{ DEKLARASI VARIABEL }
var
	// input
	S : string;								// tulisan kuno
	
	// process
	n : integer;							// panjang tulisan kuno
	i : integer;							// variabel utk loop FOR
	j : integer;							// variabel utk loop FOR nested (tabel temp1)
	k : integer;							// variabel utk loop FOR nested (tabel temp2)
	temp1 : array[1..50] of char;			// tabel utk S[n],S[n-2],...
	temp2 : array[1..50] of char;			// tabel utk S[n-1],S[n-3],...
	
	// output
	hasil_gabung : array[1..100] of char;	// gabungan tabel temp1 dan temp2

begin
	{ INISIALISASI VARIABEL }
	// inisialisasi variabel yg bukan masukan user 
	for i := 1 to 100 do hasil_gabung[i] := 'x';
	for j := 1 to 50  do temp1[j] := 'x';
	for k := 1 to 50  do temp2[k] := 'x';
	j := 0;
	k := 0;
	
	// membaca masukan dari user
	read(S);
	
	// mengukur panjang S
	n := length(S); 
	
	{ ALGORITMA }
	// membaca huruf dari S[n],S[n-2],...,S[n-1],S[n-3],...
	for i := n downto 1 do
	begin
		if (i mod 2 = 0) then
		begin
			j := j + 1;
			temp1[j] := S[i];
		end
		else
		begin
			k := k + 1;
			temp2[k] := S[i];	
		end
	end;
	
	// menggabungkan hasil pembacaan
	if (n mod 2 = 0) then // jika panjang tulisan genap
	begin
		for i := 1 to j do hasil_gabung[i] := temp1[i];
		for i := (1 + j) to (k + j) do hasil_gabung[i] := temp2[i - j];
	end
	else // jika panjang tulisan ganjil
	begin
		for i := 1 to k do hasil_gabung[i] := temp2[i];
		for i := (1 + k) to (j + k) do hasil_gabung[i] := temp1[i - k];	
	end;
	
	// menuliskan hasil penggabungan
	for i := 1 to n do write(hasil_gabung[i]);

end.