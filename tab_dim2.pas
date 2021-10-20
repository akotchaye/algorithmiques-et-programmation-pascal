program tab_dim2;
const N=111;
const M=7;
var i,j,cpt:integer;
som,moy:real;
tab:array[1..N,1..M] of real;//afficher a la fin entrepreneur numero i moyenne
BEGIN
    tab[1,1]:=0;
    //begin
	//for i:=1 to N do
        //begin
	//cpt:=0;
    for j:=2 to M do//numerotation de la premiere ligne
    tab[1,j]:=j-1;
    //cpt:=0;
    for i:=2 to N do//numerotation des colones
    tab[i,1]:=i-1;
   // begin
    	for i:=2 to N do//saisie des salaires
    	begin
    	writeln('entrer le salaire de l''entrepreneur' , i-1);
    	for j:=2 to M do
    	begin
    	writeln('entrer le salaire du mois ', j-1);
    	readln(tab[i,j]);
    	end;
    	end;
    	for i:=1 to N do//affichage du tableau
       begin
       for j:=1 to M do
        write('  ', tab[i,j]:0:0);
    	end;
    //end;
    som:=0;
    //calcul et affichage  de la moyenne des entrepreneurs
    for i:=2 to N do
    Begin
    for j:=2 to M do
        moy:=moy+tab[i,j];
    moy:=moy/(M-1);
    writeln ('la moyenne de l''entrepreuneur ',i-1,' est ',moy:0:2);
    moy:=0;
    end;
END.
