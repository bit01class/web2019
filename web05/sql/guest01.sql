drop table guest01;
create table guest01(
	num number primary key,
	name varchar2(15) default '¼Õ´Ô',
	content varchar2(1024),
	ip varchar2(15)
);
-- dummy
insert into guest01 values (1,'tester','test1','0.0.0.0');
insert into guest01 values (2,'tester','test2','0.0.0.0');
insert into guest01 values (3,'tester','test3','0.0.0.0');
insert into guest01 values (4,'tester','test4','0.0.0.0');
insert into guest01 values (5,'tester','test5','0.0.0.0');
commit;