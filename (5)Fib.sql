set serveroutput on

declare

a:=0;
b:=1;
c number; 
n:=8;
i number;

begin

dbms.output_put.line('Fibonacci series :');
dbms.output_put.line(a);
dbms.output_put.line(b);

for i in 2..n
 loop
  c=a+b;
  dbms.output_put.line(c);
  a=b;
  b=c;
 end loop;

end;
/
