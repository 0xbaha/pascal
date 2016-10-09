{===================================================================
  NPC Schematics 2016
  Warming Up: Magic Wand
  by Baharuddin Aziz
  September 25, 2016
 ===================================================================}
 
program magic_wand;
 
{ DEKLARASI VARIABEL }
var
    // input
    Ni : longint;   // jumlah tongkat pada loker i
    
    // output
    M : longint;    // jumlah tongkat sihir milik Wembo
    
begin
    { INISIALISASI VARIABEL }
    // inisialisasi
    M := 0;
    
    // membaca masukan user
    read(Ni);
    while (Ni >= 1) and (Ni <= 1000000) do
    begin
        M := M + Ni;
        read(Ni);
    end;

    { ALGORITMA }
    // menuliskan jumlah tongkat sihir
    M := M mod 1000000007;
    writeln(M);
end.
