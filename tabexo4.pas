Program exo4;
var tab:array[1..100] of real;
i ,cpt,nbr:integer;
moy,som:real;
Begin
	writeln('entrer le nombre de notes');
	readln(nbr);
	som:=0;
	for i:=1 to nbr do
	begin
        writeln('entrer la note ',i);
	readln(tab[i]);
	som:=som+tab[i];
end;
moy:=som/nbr;
cpt:=0;
for i:=1 to nbr do
Begin
	if (tab[i]>moy) then
	cpt:=cpt+1;
	
end;
writeln('il y a ',cpt,' notes superieur a la moyenne de la classe!');
END.

