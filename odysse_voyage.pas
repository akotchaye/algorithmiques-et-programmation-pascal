program odysse_voyage;
const N=15;
var tab:array[1..N] of integer;
choix: integer;
rep: char;
//procedure d'initialisation
procedure init_tab;
var i:integer;
Begin
for i:=1 to N do
tab[i]:=0;	 
End;
//produre d'affichage du menu
procedure aff_menu;
Begin
writeln('1_consultation');
WriteLn;
writeln('2_reservation');
WriteLn;
writeln('3_annulation');
writeln ;
writeln('4_termine');	
End;
//procedure consultation
procedure consultation;
var i,cpt:integer;
Begin
cpt:=0;
for i:=1 to N do 
begin
    if tab[i]=0 then
    begin
        cpt:=cpt+1;
writeln('la place nø ',i,' est libre');
writeln('');
end;
end;
if cpt>0 then
begin
    writeln('le nombre de place disponible est : ' ,cpt);
 writeln;
 end
else
writeln('toutes les places sont occup‚es!');
End;
//procedure reservation
procedure reservation;
var p:integer;
Begin
write('entrer le numero de la place … reserver : ');
readln(p);
writeln;
if tab[p]=0 then
begin
tab[p]:=1;
writeln('reservation de la place nø ',p,' effectu‚e!') ;
end
else
 writeln('cette place est dej… occup‚e!');
End;
//procedure annulation
procedure annulation;
var n:integer;
Begin
write('entrer le numero de la place … annuler : ');
readln(n);
if  tab[n]=1 then 
begin
tab[n]:=0;
writeln;
writeln('op‚ration effectu‚e avec succŠs!');
writeln;
writeln('la place nø',n,' est d‚sormais disponible!');
end
else 
begin
writeln;
writeln('la place nø',n,' est libre');
end;
End;
//programme principal
BEGIN 
init_tab;
repeat 
begin
aff_menu;
writeln;
write('entrer votre choix: ');
readln(choix);
writeln;
case choix of 
1: consultation;
2:reservation;
3:annulation;
4:writeln('fin du programme!');
else
 writeln('mauvaise saisie!');
end;
writeln;
write('voulez-vous recommencer (o/n)? : ');
readln(rep);
writeln;
end;
until rep='n';
END.