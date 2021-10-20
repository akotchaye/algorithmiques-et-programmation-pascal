program produit;
var prix,qte,prt,rm :real;
//procedure port
procedure port;
Begin
if prix*qte>=50000 Then
    prt:=2*prix*qte/100
else 
prt:=0;
End;
//procedure remise 
procedure remise;
begin
if( 20000< prix*qte)  and ( prix*qte<100000) then 
rm:=prix*qte*5/100
else if prix*qte>100000 Then
 rm:=prix*qte*10/100
else
 rm:=0;
end;
//procedure affichage
procedure affichage;
begin
writeln('le prix du  produit est ',(prix*qte+prt-rm):0:0,' F CFA');
writeln;
if prix*qte<20000 Then
begin
writeln('pas de remise');
writeln;
end
else
writeln('la remise est ',rm:0:0,' F CFA');
if prix*qte<50000 Then
begin
writeln;
writeln('le port est gratuit');
writeln;
end
else 
writeln;
writeln('le port est ',prt:0:0,' F CFA');
end;
procedure init;
begin
write('entrer le prix du produit: ');
readln(prix);
writeln;
write('entrer la quantit‚: ');
readln(qte);
writeln;
end;
BEGIN 
init;
port;
remise;
affichage;
END.