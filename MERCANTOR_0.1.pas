program mercantor_01;
//declaration des constantes//
const d=0.04;
const b=0.0005;
const u=0.1;
const v=0.2;
const M=24; //24 mois de simmulation//
//declaration du tableau et des variables//
type  vect=array [1..M] of real;
var TAB : vect;
Vx,Vy,X,Y :real;
    n,i  :integer;
	BEGIN
	//Saisie des valeurs et affectation du nombre de proie du premier mois dans la premiere colonne du tableau//
	writeln('entrer le nombre de proie');
		readln (X);
		TAB[1]:=X;
		writeln('entrer le nombre de predateurs');
		readln(Y);
		writeln('entrer le nombre de mois de la simulation');
		readln( n);
		//calcul des taux de variations Vx et Vy//
		Vx:=d-b*Y; 
		Vy:=u*b*X-v;
		//calcul et affectation dans le tableau des variation du nombre de proie//
	    for i:=2 to n do
	    begin
		 X:=X+Vx*X;
		 Y:=y+Vy*Y;//n‚gligeable//
		 TAB[i]:=X;
     end;
     writeln('vecteur');
		 //affichage du tableau//
		 for i:=1 to  n do
             writeln (TAB[i]:2:0);
		 
        		
END.
