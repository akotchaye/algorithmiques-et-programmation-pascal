	PROGRAM UV_1;
var Dev,Exam,note:real;
i,n,cpt:integer;

begin
 cpt:=0;
 i:=1;
   while (i<=2) do
    begin
        writeln('entrer le nombre de matiere contenu dans l uv', i );
        readln(n);
        repeat
           	  writeln('entrer la note de devoir');
	          readln(Dev);
	          Dev:=Dev*0.4;
	         writeln ('entrer la note d''examen');
	          readln (exam);
	         exam:=exam*0.6;
	         note:=Dev+exam;
	          if(note<=7)
               then cpt:=cpt+1;
	         n:=n-1;
         until n=0;  
          i:=i+1;
    end;
  if(cpt>=1)
 then writeln('ECHOUE')
 else writeln ('ADMIS');
		
end.		 