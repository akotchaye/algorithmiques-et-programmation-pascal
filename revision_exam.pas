program moyenne_etudiant;
const N=2;
const M=3;
var tab:array[1..N,1..M] of real;
note,moy :real;
//procedure creation
procedure init_tab;
var i,j:integer;
Begin
for i:=1 to N do
begin
writeln('entrer les notes de l''etudiant ',i,' :');
for j:=1 to M do
begin
write('entrer la note nø',j,' :');
readln(tab[i,j]);
end;
end;
End;
//procedure moyenne
procedure moyenne;
var i,j:integer;
begin
for i:=1 to N do                                    //a completer!!!!
begin
	moy:=0;
	for j:=1 to M do
        moy:=moy+tab[i,j];
 writeln('la moyenne de l''etudiant ',i,' est:',(moy/M):0:0);
end;
end;

BEGIN
init_tab;
moyenne;
END.
