{===================================================================
  NPC Schematics 2016
  Tutorial: Ateliere Pirito
  by Baharuddin Aziz
  September 3, 2016
 ===================================================================}

program atelier_pirito;

{ DEKLARASI VARIABEL }
var
    // input
    n : integer;                                // jumlah sintesis yg dilakukan
    S : string;                                    // bahan-bahan pada 1x sintesis
    
    // process
    i : integer;                                // variabel utk loop FOR 
    j : integer;                                // variabel utk loop FOR nested
    tabel_S       : array[1..100] of string;    // tabel berisi kumpulan sintesis
    tabel_hitung  : array[1..26]  of integer;    // tabel utk menghitung karakter tertentu yg dipakai
    tabel_success : array[1..100] of boolean;    // tabel utk mendata sintesis mana saja yg SUCCESS
    
begin
    { INISIALISASI VARIABEL }
    // inisialisasi tabel
    for i := 1 to 100 do tabel_S[i]       := 'xx';
    for i := 1 to 26  do tabel_hitung[i]  := 0;
    for i := 1 to 100 do tabel_success[i] := true;
    
    // membaca masukan user, value n
    readln(n);                             // HARUS readln(), cek KETERANGAN
    
    // membaca masukan user, value S
    for i := 1 to n do 
    begin
        readln(S);                        // pakai readln() utk membaca STRING
        tabel_S[i] := S;                // memasukan value S ke tabel_S
    end;
    
    { ALGORITMA }
    // pengecekan SUCCESS atau FAILED suatu value pada tabel_S
    for i := 1 to n do
    begin
        // mereset nilai-nilai hitungan pada tabel_hitung menjadi 0
        for j := 1 to 26 do tabel_hitung[j] := 0;
        
        // menghitung karakter tertentu pada masing-masing value tabel_S
        for j := 1 to length(tabel_S[i]) do 
        begin
            case tabel_S[i][j] of
                'a' : tabel_hitung[1]  := tabel_hitung[1]  + 1;
                'b' : tabel_hitung[2]  := tabel_hitung[2]  + 1;
                'c' : tabel_hitung[3]  := tabel_hitung[3]  + 1;
                'd' : tabel_hitung[4]  := tabel_hitung[4]  + 1;
                'e' : tabel_hitung[5]  := tabel_hitung[5]  + 1;
                'f' : tabel_hitung[6]  := tabel_hitung[6]  + 1;
                'g' : tabel_hitung[7]  := tabel_hitung[7]  + 1;
                'h' : tabel_hitung[8]  := tabel_hitung[8]  + 1;
                'i' : tabel_hitung[9]  := tabel_hitung[9]  + 1;
                'j' : tabel_hitung[10] := tabel_hitung[10] + 1;
                'k' : tabel_hitung[11] := tabel_hitung[11] + 1;
                'l' : tabel_hitung[12] := tabel_hitung[12] + 1;
                'm' : tabel_hitung[13] := tabel_hitung[13] + 1;
                'n' : tabel_hitung[14] := tabel_hitung[14] + 1;
                'o' : tabel_hitung[15] := tabel_hitung[15] + 1;
                'p' : tabel_hitung[16] := tabel_hitung[16] + 1;
                'q' : tabel_hitung[17] := tabel_hitung[17] + 1;
                'r' : tabel_hitung[18] := tabel_hitung[18] + 1;
                's' : tabel_hitung[19] := tabel_hitung[19] + 1;
                't' : tabel_hitung[20] := tabel_hitung[20] + 1;
                'u' : tabel_hitung[21] := tabel_hitung[21] + 1;
                'v' : tabel_hitung[22] := tabel_hitung[22] + 1;
                'w' : tabel_hitung[23] := tabel_hitung[23] + 1;
                'x' : tabel_hitung[24] := tabel_hitung[24] + 1;
                'y' : tabel_hitung[25] := tabel_hitung[25] + 1;
                'z' : tabel_hitung[26] := tabel_hitung[26] + 1;
                'A' : tabel_hitung[1]  := tabel_hitung[1]  + 1;
                'B' : tabel_hitung[2]  := tabel_hitung[2]  + 1;
                'C' : tabel_hitung[3]  := tabel_hitung[3]  + 1;
                'D' : tabel_hitung[4]  := tabel_hitung[4]  + 1;
                'E' : tabel_hitung[5]  := tabel_hitung[5]  + 1;
                'F' : tabel_hitung[6]  := tabel_hitung[6]  + 1;
                'G' : tabel_hitung[7]  := tabel_hitung[7]  + 1;
                'H' : tabel_hitung[8]  := tabel_hitung[8]  + 1;
                'I' : tabel_hitung[9]  := tabel_hitung[9]  + 1;
                'J' : tabel_hitung[10] := tabel_hitung[10] + 1;
                'K' : tabel_hitung[11] := tabel_hitung[11] + 1;
                'L' : tabel_hitung[12] := tabel_hitung[12] + 1;
                'M' : tabel_hitung[13] := tabel_hitung[13] + 1;
                'N' : tabel_hitung[14] := tabel_hitung[14] + 1;
                'O' : tabel_hitung[15] := tabel_hitung[15] + 1;
                'P' : tabel_hitung[16] := tabel_hitung[16] + 1;
                'Q' : tabel_hitung[17] := tabel_hitung[17] + 1;
                'R' : tabel_hitung[18] := tabel_hitung[18] + 1;
                'S' : tabel_hitung[19] := tabel_hitung[19] + 1;
                'T' : tabel_hitung[20] := tabel_hitung[20] + 1;
                'U' : tabel_hitung[21] := tabel_hitung[21] + 1;
                'V' : tabel_hitung[22] := tabel_hitung[22] + 1;
                'W' : tabel_hitung[23] := tabel_hitung[23] + 1;
                'X' : tabel_hitung[24] := tabel_hitung[24] + 1;
                'Y' : tabel_hitung[25] := tabel_hitung[25] + 1;
                'Z' : tabel_hitung[26] := tabel_hitung[26] + 1;
            end;
        end;
        
        // menentukan SUCCESS atau FAILED 
        for j := 1 to 26 do
            if tabel_hitung[j] > 5 then tabel_success[i] := false;
        
    end;
    
    // menuliskan kesimpulan SUCCESS atau FAILED
    for i := 1 to n do
    begin
        if tabel_success[i] then
            writeln('Synthesis success!')
        else
            writeln('Synthesis failed...');
    end;

end.

{===================================================================
  KETERANGAN:
  - readln(n);
    HARUS readln() krn read() akan mengganggu proses pembacaan pada
    readln(S). Setelah read() selesai membaca masukan user, ia akan
    membuat BARIS BARU (NEW LINE) yg kemudian MENJADI INPUT pada 
    readln(S).
 ===================================================================}
