program bebek_untuk_teman;

var
	jumlah_bebek : integer;
	jumlah_teman : integer;
	bebek_didapat : integer;
	sisa_bebek : integer;
	
begin
	read(jumlah_bebek);
	read(jumlah_teman);
	
	bebek_didapat := jumlah_bebek div jumlah_teman;
	sisa_bebek := jumlah_bebek mod jumlah_teman;
	
	writeln('masing-masing ', bebek_didapat);
	writeln('bersisa ', sisa_bebek);
end.