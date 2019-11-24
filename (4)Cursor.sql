#create table employee_detail_copy w same attributes as employee_detail

set serveroutput on

declare

c_ssn employee_detail.ssn%type;
c_name employee_detail.name%type;
c_salary employee_detail.salary%type;
c_deptno employee_detail.deptno%type;

cursor c1
 is select ssn,name,salary,deptno
  from employee_detail;

begin

open c1;

loop
 fetch c1 into c_ssn,c_name,c_salary,c_deptno;
 exit when c1%notfound;
 insert into employee_detail_copy values (c_ssn, c_name, c_salary, c_deptno);
end loop;

close c1;

dbms.output_put.line('successfully copied');

end;
/
