set serveroutput on

declare
n number;
og number;
rem number;
rev number;

begin

n=&n;
og=n;
rem:=0;

while (n>0) loop
  rem=mod(n,10);
  rev=rev*10+rem;
  n:=trunc(n,10);
end loop;

if (rev=og) then
 dbms.output_put.line('number is palindrome');
else 
 dbms.output_put.line('number is not a palindrome');
end if;

end;
/
