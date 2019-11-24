set serveroutput on

declare
n number;
flag number;
i number;

begin

flag:=1;
n=&n;
i:=2

for i in 2..n/2
 loop
  if mod(n,i)=0 then
    flag:=0;
    exit;
   end if;
  end loop;
  
 if flag=1 then
  dbms.output_put.line('number is prime');
 else
  dbms.output_put.line('number is not prime');
 end if;
 
 end;
 /
