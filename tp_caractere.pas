program caractere;
var carf,carv :string;
Begin
writeln('entrer vos caracteres,"." pour arreter ,0 pour entrer un espace');
carv:=(' ');
repeat
Begin
writeln('entrer un caractere');
readln(carf);
if (carf='0')Then
 carv:=carv+(' ')
Else
    carv:=carv+carf;
end;
until(carf='.');
writeln(carv);
End.

