create table branch_detail (
code varchar (2),
name varchar (3),
assets number,
primary key (code));

create table customer_detail (
ssn number(1),
name varchar (5),
place varchar (3),
primary key (ssn));

create table account_detail (
accno varchar(2),
ssn number (1),
code varchar (2),
bal number,
primary key (accno),
foreign key (ssn) references customer_detail (ssn) on delete cascade,
foreign key (code) references branch_detail (code) on delete cascade);

insert into branch_detail values ('&code','&name',&assets);
insert into customer_detail values (&ssn,'&name','&place');
insert into account_detail values ('&accno',&ssn,'&code',&bal);
