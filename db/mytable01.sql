drop table mytable01;
create table mytable01(
	num number primary key,
	title varchar2(10) unique,
	name varchar2(10) not null,
	nalja date 
);
insert into mytable01 values (1111,'title1','test',sysdate);
insert into mytable01 values (2222,'title2','test',sysdate);