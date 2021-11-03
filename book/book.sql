create table bookTBL (
	code varchar2(4) primary key,
	title nvarchar2(50) not null,
	writer nvarchar2(10) not null,
	price number(8)
);

insert into bookTBL values ('1001','this is java','ela',28000);
insert into bookTBL values ('1002','this is oracle','kokoa',29000);
insert into bookTBL values ('1003','java','jhon',30000);
insert into bookTBL values ('1004','java 1000 is java','scott',26000);
insert into bookTBL values ('1005','spring','min',34000);

select * from bookTBL;