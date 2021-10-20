program ASSURANCE_1;
const B =1000000;
var risq,util:string;
 pui         :integer;
 prim	  :Real;
  
  BEGIN
  
	writeln ('entrer le risque');
	readln (risq);
	if(risq='tierce collision')
		then prim:=B
		else prim:=B*1.5;
	writeln(prim:2:0);
	writeln ('entrer la  puissance');                             //faire un menu pour l'utilisateur//
	readln (pui);
	if(pui>=9)
		then prim:=prim*1.4
	 else if(pui<6)
			then prim:=prim*1
			else prim:=prim*1.2;
		  
  writeln('entrer  utilisation');
  readln(util);
  if(util='promenade')
	then prim:=prim*0.9
	else if(util='trajet')
			then prim:=prim*1.1
			else prim:=prim*1.2;
			
  writeln('le montant de la prime est'  ,prim:2:0);
 end.