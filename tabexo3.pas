program exo3;
const m=3;
var tab: array [1..53] of string;
nom,tmp:string;
cpt,i,cp,j,a,nbr:integer;

 Begin
 		writeln('entrer le nombre de livre');
 		readln(nbr);
 		for i:=1 to nbr do
 		begin
 		writeln('enter le nom  du livre');
 		readln(tab[i]);
 	  end;
 	for i:=1 to nbr do
 	Begin
 		for j:=1 to nbr-1 do
 		Begin
 			if tab[j]>tab[j+1] then
 			Begin
 				tmp:=tab[j+1];
 				tab[j+1]:=tab[j];
 				tab[j]:=tmp;
 				end;
 		end;
 		end;
 	a:=1;
 	cp:=1;
  Repeat
 begin
 	cp:=cp+1;
      a:=a+1;
   end;
     until (tab[a]='NUL');
       cpt:=cp;
       writeln('a=', cp);
        writeln('enter le nom du nouveau  livre');
        readln(tab[nbr+1]);
        for i:=1 to nbr+1 do
 	Begin
 		for j:=1 to nbr do
 		Begin
 			if tab[j]>tab[j+1] then
 			Begin
 				tmp:=tab[j+1];
 				tab[j+1]:=tab[j];
 				tab[j]:=tmp;
 				end;
 		end;
    end;
    writeln('nouvelle liste des livres de la bibliotheque!');
        for i:=1 to nbr+1 do
        writeln(tab[i]);
END.