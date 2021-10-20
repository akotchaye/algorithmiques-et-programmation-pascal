program ELECTION2019;
const m=2000;
type vect1=array[1..m] of string;
type vect2=array[1..m]   of  integer;
var Tlieu,Tjour,Tmois,Tsexe,Tnom,Tprenom:vect1;
TnumB,TNcarte,Tanne: vect2;
code :string;
Num,n,i:integer;
BEGIN
 //writeln('entrer le nombre d''electeur');
 //readln( m);
 writeln('entrer le numero du bureau de vote');
readln (Num);
 code:='BUREAU DE VOTE Nø'+'num';
 for  i:=1 to m do
 begin
    writeln('entrer le numero de carte');
	readln (TNcarte[i]);
	writeln('enter le nom');
	readln (TNom[i]);
	writeln ('entrer prenom');
	readln  (Tprenom[i]);
	//TNom[i]=TNom[i]+-+Tprenom[i];
	writeln  ('entrer lieu de naissance') ;
	readln  (Tlieu[i]);
	writeln ('entrer le sexe');
	readln ( Tsexe[i]);
	writeln('entrer jour de naissance');
	readln (Tjour[i]);
	writeln ('entrer mois de naissance');
	readln  ( Tmois[i]);
	writeln  ('saisir annee de naissance');
	readln (Tanne[i]);
	//Tjour[i]:=Tjour[i]+-+Tmois[i]+-+Tanne[i];
	Tanne[i]:=2018-Tanne[i];
	IF (Tanne[i]<18) then
	 writeln (Tnom[i]  ,Tprenom[i] ,Tanne[i]   ,  'n''a pas l''age de voter') ;
 end;
END.


 