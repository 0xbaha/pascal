{===================================================================
  NPC Schematics 2016
  Warming Up: Wembo dan Hobi Berdendang
  by Baharuddin Aziz
  September 25, 2016
 ===================================================================}

program wembo_dan_hobi_berdendang;

var
    // input
    n : integer;                                            // jumlah lagu yg dimiliki
    q : integer;                                            // jumlah pencarian lagu pd daftar putar
    i : integer;                                            // variabel utk loop
    j : integer;                                            // variabel utk loop
    S : string;                                             // string sebelum dimasukkan ke tabel

    // process
    lagu_dicari             : string;                       // nama lagu yg dicari
    tabel_lagu              : array[1..1000] of string;     // lagu-lagu yg dimiliki
    tabel_pencarian         : array[1..1000] of string;     // lagu-lagu yg dicari
    pencarian_ketemu        : array[1..1000] of boolean;    // utk proses pencarian lagu
    hasil_pencarian         : integer;                      // utk proses pencarian lagu

    // output
    tabel_hasil_pencarian   : array[1..1000] of string;     // hasil pencarian lagu-lagu
	
begin
    { INISIALISASI VARIABEL }
    // inisialisasi tabel
    for i := 1 to 1000 do tabel_lagu[i]             := 'xx';
    for i := 1 to 1000 do tabel_pencarian[i]        := 'xx';
    for i := 1 to 1000 do tabel_hasil_pencarian[i]  := 'xx';
    for i := 1 to 1000 do pencarian_ketemu[i]       := false;

    // membaca masukan user, value n dan q
    readln(n,q);  // HARUS readln(), cek KETERANGAN

    // membaca masukan user, lagu-lagu yg dimiliki
    for i := 1 to n do 
    begin
        readln(S);
        tabel_lagu[i] := S;
    end;

    // membaca masukan user, lagu-lagu yg dicari
    for i := 1 to q do
    begin
        readln(S);
        tabel_pencarian[i] := S;
    end;

    { ALGORITMA }
    // pencarian lagu
    for i := 1 to q do
    begin
        // memeriksa satu-persatu lagu terhadap daftar putar
        for j := 1 to n do
        begin
            if tabel_pencarian[i] = tabel_lagu[j] then
            begin
                pencarian_ketemu[i] := true; 
                hasil_pencarian := i;
            end;
        end;
		
        // menuliskan hasil pencarian setiap lagu yg dicari
        if pencarian_ketemu[i] then
            tabel_hasil_pencarian[hasil_pencarian] := 'duk tek duk duk tek'
        else if not pencarian_ketemu [i] then
            tabel_hasil_pencarian[i] := 'tek tek duk tek dus';
    end;
	
    // menuliskan seluruh hasil pencarian
    for i := 1 to q do
    begin
        writeln(tabel_hasil_pencarian[i]);
    end;
end.

{===================================================================
  KETERANGAN:
  - readln(n,q);
    HARUS readln() krn read() akan mengganggu proses pembacaan pada
    readln(S). Setelah read() selesai membaca masukan user, ia akan
    membuat BARIS BARU (NEW LINE) yg kemudian MENJADI INPUT pada 
    readln(S).
 ===================================================================
  KODE DI BAWAH UNTUK DEBUGGING:
    // DEBUGGING: mengecek masukan user
    writeln('---');
    writeln('daftar lagu:');
    for i := 1 to n do
        writeln(tabel_lagu[i]);
    writeln('---');
    writeln('daftar pencarian:');
    for i := 1 to q do
        writeln(tabel_pencarian[i]);
	writeln('---');
 ===================================================================}
