program tenu;

uses crt;

type
estudiante = record

           mat:array [1..30] of string;
           alumno:array [1..30] of string;
           dir:array [1..30] of string;
           tel:array [1..30] of string;
           edad:array [1..30] of integer;
           curso:array [1..30] of string;

end;

var
op:char;
opc,i,x,y,c,j:integer;
est:estudiante;
n:array [1..30,1..30] of integer;
ef,ec,ee:array [1..30] of integer;
p,p7,p3,nf,pc,pe:real;

procedure cabeza;
     begin
     textcolor(lightblue);gotoxy(21,2);writeln('C O L E G I O  L A  S O L U C I O N');gotoxy(20,3);
     writeln('Dir.:Prol.Indepencdencia #235, San Juan');gotoxy(33,4);
     writeln('Tel:809-557-6852');
end;

procedure cuadro;
begin
x:=1; y:=6;
textcolor(yellow);
for i := 1 to 80 do
begin
gotoxy(x,6);writeln('Í');
gotoxy(x,8);writeln('Í');
gotoxy(x,20);writeln('Í');
x:=x+1;
end;

for i:=1 to 14 do
begin
gotoxy(1,y);writeln('º');
gotoxy(80,y);writeln('º');
y:= y + 1;
end;

gotoxy(1,8);writeln('Ì');
gotoxy(80,8);writeln('¹');
gotoxy(1,6);writeln('É');
gotoxy(1,20);writeln('È');
gotoxy(80,6);writeln('»');
gotoxy(80,20);writeln('¼');




end;

procedure captura;
begin
clrscr;

cabeza;
gotoxy(2,7);writeln('Matricula');
gotoxy(12,7);writeln('Estudiante');
gotoxy(36,7);writeln('Direccion');
gotoxy(54,7);writeln('Telefono');
gotoxy(68,7);writeln('Edad');
gotoxy(75,7);writeln('Curso');

cuadro;
gotoxy(20,24);writeln('Cantidad de alumnos a ingresar..');
gotoxy(54,24);readln(c);
y:=9;

for i:= 1 to c do

begin
gotoxy(2,y);readln(est.mat[i]);
gotoxy(12,y);readln(est.alumno[i]);
gotoxy(36,y);readln(est.dir[i]);
gotoxy(54,y);readln(est.tel[i]);
gotoxy(69,y);readln(est.edad[i]);
gotoxy(76,y);readln(est.curso[i]);

y := y + 1;


end;

gotoxy(20,24);writeln('                                       ');
textcolor(yellow+blink);
gotoxy(10,24);writeln('Captura de alumnos terminada... pulte una tecla por favor');
gotoxy(75,24);readln;
textcolor(white);
clrscr;


end;

procedure capturanotas;
begin
  clrscr;
  cabeza;
  gotoxy(2,7);writeln('Mat.');
  gotoxy(12,7);writeln('Alumno');
  gotoxy(38,7);writeln('N1');
  gotoxy(43,7);writeln('N2');
  gotoxy(48,7);writeln('N3');
  gotoxy(53,7);writeln('N4');
  gotoxy(58,7);writeln('PM');
  gotoxy(63,7);writeln('70%');
  gotoxy(68,7);writeln('EF');
  gotoxy(72,7);writeln('30%');
  gotoxy(77,7);writeln('NF');
  cuadro;

  y:=9; x:=38; p:=0;

  for i:= 1 to c do
    begin
    gotoxy(2,y);writeln(est.mat[i]);
    gotoxy(12,y);writeln(est.alumno[i]);
    for j:= 1 to 4 do
        begin
        gotoxy(x,y);readln(n[i,j]);
        x:=x+5;
        p:=p+n[i,j];
        end;
        x:=38;
        p:=p/4;
        gotoxy(58,y);writeln(p:2:0);
        p7:=p*0.7;
        gotoxy(63,y);writeln(p7:2:0);
        gotoxy(68,y);readln(ef[i]);
        p3:=ef[i]*0.3;
        gotoxy(72,y);writeln(p3:2:0);
        nf:=p7+p3;
        gotoxy(77,y);writeln(nf:2:0);
        p7:=0; nf:=0; p3:=0; p:=0;

        y:=y+1;
        end;
         gotoxy(10,24);writeln('Captura de notas terminada... pulse una tecla por favor');
         gotoxy(75,24);readln;
         textcolor(WHITE);
         clrscr;


end;

procedure capturanotascomp;
begin
  clrscr;
  cabeza;
  gotoxy(2,7);writeln('Mat.');
  gotoxy(12,7);writeln('Alumno');

  gotoxy(60,7);writeln('Nota Completivo');
  cuadro;

  y:=9; x:=38; p:=0;

  for i:= 1 to c do
  begin
  for j:= 1 to 4 do
  begin
  p:= p+n[i,j];
  end;

  if (((p/4)*0.7)+(ef[i]*0.30)<70)  then


    begin
    gotoxy(2,y);writeln(est.mat[i]);
    gotoxy(12,y);writeln(est.alumno[i]);
    gotoxy(60,y);readln(ec[i]);
    y:=y+1;
    end;

     p:=0;
        end;
         gotoxy(10,24);writeln('Captura de notas terminada completivas... pulse una tecla por favor');
         gotoxy(75,24);readln;
         textcolor(WHITE);
         clrscr;


end;

procedure capturanotasextra;
begin
  clrscr;
  cabeza;
  gotoxy(2,7);writeln('Mat.');
  gotoxy(12,7);writeln('Alumno');

  gotoxy(60,7);writeln('Nota Extraordinario');
  cuadro;

  y:=9; x:=38; p:=0;

  for i:= 1 to c do
  begin
  for j:= 1 to 4 do
  begin
  p:= p+n[i,j];
  end;

  if ((((((p/4)*0.7)+(ef[i]*0.30))*0.5)+(ec[i]*0.5))<70) and ((((p/4)*0.7)+(ef[i]*0.30))<70) then


    begin
    gotoxy(2,y);writeln(est.mat[i]);
    gotoxy(12,y);writeln(est.alumno[i]);
    gotoxy(60,y);readln(ee[i]);
    y:=y+1;
    end;

     p:=0;
        end;
         gotoxy(10,24);writeln('Captura de notas terminada extraordinario... pulse una tecla por favor');
         gotoxy(75,24);readln;
         textcolor(WHITE);
         clrscr;


end;





procedure reportenotas;
begin
  clrscr;
  cabeza;
  gotoxy(2,7);writeln('Mat.');
  gotoxy(12,7);writeln('Alumno');
  gotoxy(38,7);writeln('N1');
  gotoxy(43,7);writeln('N2');
  gotoxy(48,7);writeln('N3');
  gotoxy(53,7);writeln('N4');
  gotoxy(58,7);writeln('PM');
  gotoxy(63,7);writeln('70%');
  gotoxy(68,7);writeln('EF');
  gotoxy(72,7);writeln('30%');
  gotoxy(77,7);writeln('NF');
  cuadro;

  y:=9; x:=38; p:=0;

  for i:= 1 to c do
    begin
    gotoxy(2,y);writeln(est.mat[i]);
    gotoxy(12,y);writeln(est.alumno[i]);
    for j:= 1 to 4 do
        begin
        gotoxy(x,y);writeln(n[i,j]);
        x:=x+5;
        p:=p+n[i,j];
        end;
        x:=38;
        p:=p/4;
        gotoxy(58,y);writeln(p:2:0);
        p7:=p*0.7;
        gotoxy(63,y);writeln(p7:2:0);
        gotoxy(68,y);writeln(ef[i]);
        p3:=ef[i]*0.3;
        gotoxy(72,y);writeln(p3:2:0);
        nf:=p7+p3;
        if nf < 70 then
        textcolor(lightred)
        else
        textcolor(yellow);
        gotoxy(77,y);writeln(nf:2:0);
        textcolor(yellow);
        p7:=0; nf:=0; p3:=0; p:=0;

        y:=y+1;
        end;
         gotoxy(10,24);writeln('Captura de notas terminada... pulse una tecla por favor');
         gotoxy(75,24);readln;
         textcolor(WHITE);
         clrscr;


end;

procedure reportenotascomp;
begin
  clrscr;
  cabeza;
  gotoxy(2,7);writeln('Mat.');
  gotoxy(12,7);writeln('N1');
  gotoxy(17,7);writeln('N2');
  gotoxy(22,7);writeln('N3');
  gotoxy(27,7);writeln('N4');
  gotoxy(32,7);writeln('PM');
  gotoxy(37,7);writeln('70%');
  gotoxy(42,7);writeln('EF');
  gotoxy(47,7);writeln('30%');
  gotoxy(52,7);writeln('NF');
  gotoxy(57,7);writeln('50%');
  gotoxy(62,7);writeln('EC');
  gotoxy(67,7);writeln('50%');
  gotoxy(72,7);writeln('NC');


  cuadro;

  y:=9; x:=12; p:=0;

  for i:= 1 to c do
    begin


    for j:= 1 to 4 do
        begin
        p:=p+n[i,j];
        end;
        x:=12;

         if (((p/4)*0.7)+(ef[i]*0.30)<70)  then
         begin
         textcolor(yellow);
         gotoxy(2,y);writeln(est.mat[i]);


        gotoxy(x,y);writeln(n[i,1]);
        x:=x+5;
        gotoxy(x,y);writeln(n[i,2]);
        x:=x+5;
        gotoxy(x,y);writeln(n[i,3]);
        x:=x+5;
        gotoxy(x,y);writeln(n[i,4]);
        x:=x+5;


        gotoxy(32,y);writeln(p/4:2:0);
        p7:=p*0.7;
        gotoxy(37,y);writeln(p7/4:2:0);
        gotoxy(42,y);writeln(ef[i]);
        p3:=ef[i]*0.3;
        gotoxy(47,y);writeln(p3:2:0);
        nf:=(p7/4)+p3;

        gotoxy(52,y);writeln(nf:2:0);
        textcolor(yellow);
        gotoxy(57,y);writeln(nf*0.5:2:0);
        gotoxy(62,y);writeln(ec[i]);
        gotoxy(67,y);writeln(ec[i]*0.5:2:0);
        if (nf*0.5)+(ec[i]*0.5) < 70 then
        textcolor(lightred)
        else
        textcolor(yellow);
        gotoxy(72,y);writeln((nf*0.5)+(ec[i]*0.5):2:0);
        y:=y+1;
        end;

        p7:=0; nf:=0; p3:=0; p:=0;



        end;
        p:=0;
         gotoxy(10,24);writeln('Captura de notas terminada... pulse una tecla por favor');
         gotoxy(75,24);readln;
         textcolor(WHITE);
         clrscr;


end;

procedure reportenotasextra;
begin
  clrscr;
  cabeza;
  gotoxy(2,7);writeln('Mat.');
  gotoxy(12,7);writeln('N1');
  gotoxy(17,7);writeln('N2');
  gotoxy(22,7);writeln('N3');
  gotoxy(27,7);writeln('N4');
  gotoxy(32,7);writeln('PM');
  gotoxy(37,7);writeln('70%');
  gotoxy(42,7);writeln('EF');
  gotoxy(47,7);writeln('30%');
  gotoxy(52,7);writeln('NF');
  gotoxy(57,7);writeln('EC');
  gotoxy(62,7);writeln('NC');
  gotoxy(67,7);writeln('30%');
  gotoxy(72,7);writeln('EE');
  gotoxy(77,7);writeln('NE');


  cuadro;

  y:=9; x:=12; p:=0;

  for i:= 1 to c do
    begin


    for j:= 1 to 4 do
        begin
        p:=p+n[i,j];
        end;
        x:=12;

  if ((((((p/4)*0.7)+(ef[i]*0.30))*0.5)+(ec[i]*0.5))<70) and ((((p/4)*0.7)+(ef[i]*0.30))<70) then
         begin
         textcolor(yellow);
         gotoxy(2,y);writeln(est.mat[i]);


        gotoxy(x,y);writeln(n[i,1]);
        x:=x+5;
        gotoxy(x,y);writeln(n[i,2]);
        x:=x+5;
        gotoxy(x,y);writeln(n[i,3]);
        x:=x+5;
        gotoxy(x,y);writeln(n[i,4]);
        x:=x+5;


        gotoxy(32,y);writeln(p/4:2:0);
        p7:=p*0.7;
        gotoxy(37,y);writeln(p7/4:2:0);
        gotoxy(42,y);writeln(ef[i]);
        p3:=ef[i]*0.3;
        gotoxy(47,y);writeln(p3:2:0);
        nf:=(p7/4)+p3;

        gotoxy(52,y);writeln(nf:2:0);
        textcolor(yellow);
        gotoxy(57,y);writeln(ec[i]);
        gotoxy(62,y);writeln((nf*0.5)+(ec[i]*0.5):2:0);
        gotoxy(67,y);writeln(((nf*0.5)+(ec[i]*0.5))*0.3:2:0);
        gotoxy(72,y);writeln(ee[i]);
        if (((nf*0.5)+(ec[i]*0.5))*0.3)+(ee[i]*0.7) < 70 then
        textcolor(lightred)
        else
        textcolor(yellow);
        gotoxy(77,y);writeln((((nf*0.5)+(ec[i]*0.5))*0.3)+(ee[i]*0.7):2:0);
        y:=y+1;
        end;

        p7:=0; nf:=0; p3:=0; p:=0;



        end;
         gotoxy(10,24);writeln('Captura de notas terminada... pulse una tecla por favor');
         gotoxy(75,24);readln;
         textcolor(WHITE);
         clrscr;


end;

procedure opciones;
begin
   op:='S';
    while (op = upcase('s')) do
    begin
       cabeza;
       textcolor(YELLOW);
       gotoxy(15,8);writeln('1. C a p t u r a  d e  E s t u d i a n t e s');
       gotoxy(15,9);writeln('2. C a p t u r a  d e  N o t a s');
       gotoxy(15,10);writeln('3. R e p o r t e');

       gotoxy(15,11);writeln('4. C a p t u r a  d e  N o t a s  d e  C o m p l e t i v o s');
       gotoxy(15,12);writeln('5. R e p o r t e  d e  N o t a s  d e  C o m p l e t i v o s');
       gotoxy(15,13);writeln('6. C a p t u r a  d e  N o t a s  E x t r a o r d i n a r i o');
       gotoxy(15,14);writeln('7. R e p o r t e  d e  N o t a s  E x t r a o r d i n a r i o');
       gotoxy(15,15);writeln('8. S a l i r  d e l  P r o g r a m a');
        textcolor(WHITE);
       gotoxy(20,22);writeln('Elija una opcion..[ ]');
       gotoxy(39,22);readln(opc);

       if opc = 1 then
          captura
       else
       if opc = 2 then
        CapturaNotas
        else
        if opc = 3 then
        reportenotas else
        if opc= 4 then
        capturanotascomp else
        if opc = 5 then
        reportenotascomp else
        if opc = 6 then
        capturanotasextra else
        if opc = 7 then
        reportenotasextra
       else
         op :='n';
    end;

end;

begin
   clrscr;
   opciones;

end.
