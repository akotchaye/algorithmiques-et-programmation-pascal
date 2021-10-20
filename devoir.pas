program devoir;
const n=3;
type vect=array [1..n] of integer;

var tnote:vect;
som,moy:Real;
i:integer;
Begin
	som:=0;
	moy:=0;
	for i:=1 to n do
	Begin
		writeln('entrer la note',i);
		readln (tnote[i]);
    end;
    for i:=1 to n do
        som:=som+tnote[i];
    moy:=som/n;
    writeln('la somme est ',som:2:0);
    writeln('la moyenne est',moy:2:0);
end.


