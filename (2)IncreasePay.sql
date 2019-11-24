set serveroutput on

begin

update employee_detail
set salary=salary+salary*0.5
where deptno=10;

dbms.output_put.line(to_char(sql%rowcount) || ' rows affected');

end;
/
