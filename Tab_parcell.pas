PROGRAM tab_parcelle;  
const X=3;
const Y=2;
var tab:array[1..X,1..Y] of real;
som,max:real;
rp,rt:integer;
//procedure d'initialisation!
procedure init_tab;
var  i,j:integer;
 Begin
 		for i:=1 to X do
 		begin
 			writeln;
        writeln('entrer le(s) montant(s) du ',i,'e trimestre :');
 	for j:=1 to Y do
 	begin
 		writeln;
 		write('entrer le ',j,'e montant : ');
 		readln(tab[i,j]);
 		end;
    end;
End;
//procedure d'affichage
procedure aff_tab;
var i,j:integer;
Begin
	writeln;
	for i:=1 to X do
	begin
	for j:=1 to Y do
        write(' | ',tab[i,j]:0:2,' | ');
        writeln;
        writeln;
	end;End;
//procedure somme des elements du tableau
procedure som_tab;
var i,j:integer;
cpt:real;
Begin
som:=0;
max:=0;
for i:=1 to X do 
begin
for j:=1 to Y do
begin
    som:=som+tab[i,j];
  if(max<tab[i,j]) then
      max:=tab[i,j];
  end;
end;
End;

function chek_tab(a,b:integer):integer;
Begin
if tab[a,b]=0 then 
    chek_tab:=0
     Else
    chek_tab:=1;
End;
//point d'entr‚ du programme principal
BEGIN
init_tab;
aff_tab;
som_tab;
//affichage de la somme et du maximum
writeln('la somme totale est: ',som:0:0,' F CFA');
writeln;
writeln('le montant le plus ‚lev‚  est: ',max:0:0,' F CFA');
writeln;
//recherche de la parcelle renseign‚
write('entrer le rang de la parcelle : ');
readln(rp);
writeln;
write('entrer le rang du trimestre : ');
readln(rt);
writeln;
//valret:=chek_tab(rp,rt);
if chek_tab(rp,rt)=0 then
    writeln('la parcelle de rang ',rp, ' du trimestre de rang ',rt, ' n''est pas renseign‚e!')
  else
 writeln('la parcelle de rang ',rp, ' du trimestre de rang ' ,rt, ' est renseign‚e!');
END.

