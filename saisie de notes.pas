program saisie;
var tab:array[1..100] of  real;
 note,svg,min,max:real;
a,i,n,imin,imax:integer;
BEGIN
	note:=0;
	writeln('entrer  le nombre de note:');
	readln(n);                                                                      //afficher la moyenne ___afficher le max___trier le tableau
	for i:=1 to n  do
	Begin
		writeln('entrer une note:');
		readln(tab[i]);
		note:=note+tab[i];
	end;
writeln(' vecteur des notes:');
	for i:=1 to n do
        writeln(tab[i]:0:0);
	writeln('la somme des notes est : ', note:0:0);
	writeln('la moyenne est :', (note/n):0:2);
	min:=tab[1];
	for i:=1 to n do
	Begin
	if (min>tab[i]) Then
	begin
        min:=tab[i];
	    imin:=i;
	end;	
    end;
max:=tab[1];
for i:=1 to n do
	Begin
	if (max<tab[i]) Then
	begin
        max:=tab[i];
	    imax:=i;
	end;	
	end;
	for a:=1 to n do
	Begin
	for i:=1 to n-1  do
	Begin
	if tab[i] >tab[i+1] then
	begin
    svg:=tab[i];
	tab[i]:=tab[i+1];
	tab[i+1]:=svg;
   end;
	end;
    end;
   writeln('le max est  :',tab[n]:0:0,'  le min est :',tab[1]:0:0);
   writeln('max=',max:0:2,'  et min=',min:0:2);
   writeln('imax=',imax,'  et imin=',imin);
END.