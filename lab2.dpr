program laba2_2;

{$APPTYPE CONSOLE}

uses
  SysUtils, Windows, math;

var
  n,nn,nk: byte;
  f,x,xk,dx,e,b:real;

begin

  nn:=10;
  nk:=15;
  x:=0.6;
  xk:=1.1;
  dx:= 0.25;
  e:=dx/1000;

  while(x<xk+e) do
  begin
    f:= 0;

    for n:=1 to nk do
    begin
      f:= f + Power(exp(n*x-3),1/5)/(ln(n*x)+3/(5+ln(n*x)));
      if(n>=nn) then
      begin
        b:=f+sqrt(x+(n-1)/n);
        writeln('n = ', n, '; x = ', x:0:4, '; f = ', b:0:4);
      end;
    end;

    x:= x + dx;
  end;

  readln;
end.
 