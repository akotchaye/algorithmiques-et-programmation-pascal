program nombre;
var  i,nbr,nbrc:integer;
begin
writeln('entrer un  nombre : ');
readln(nbr);
writeln('combien de nombre consecutif ? : ');
readln(nbrc);
writeln('les',nbrc, 'entiers consecutifs de ',nbr,' sont : ');
 for i:=1 to nbrc do
    writeln(nbr+i);
end.
