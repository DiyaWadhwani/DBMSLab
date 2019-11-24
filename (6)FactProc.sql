declare

n number;
fac number;

procedure factorial (n in number, fact out number)
  is
    i number;
    
    begin
     fact:=1;
     for i in 1..n
      loop
       fact=fact*i;
      end loop;
     end;

begin
 n=&n;
 factorial(n,fac);
 dbms.output_put.line('Factorial of '||t||' is : ' || fac);
end;
/
 
