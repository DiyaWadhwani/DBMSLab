set serveroutput on

begin
 
for rec in (select * from branch_detail)
 loop
 dbms.output_put.line( 'code : ' || rec.code || 'name : ' || rec.name || 'assets : ' || rec.assets);
 end loop;
for rec in (select * from customer_detail)
 loop
 dbms.output_put.line( 'ssn : ' || rec.ssn || 'name : ' || rec.name || 'place : ' || rec.place);
 end loop;
for rec in (select * from account_detail)
 loop 
 dbms.output_put.line( 'accno : ' || rec.accno || 'ssn : ' || rec.ssn || 'code : ' || rec.code || 'bal : ' || rec.bal);
 end loop;

update account_detail
set balance = 120000
where ssn=1;

dbms.output_put.line(to_char(sql%rowcount) || ' rows affected');

end;
/
