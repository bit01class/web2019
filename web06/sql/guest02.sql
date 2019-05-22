create table guest02(
	num number primary key,
	id varchar2(20),
	content varchar2(1024)
);
-- dummy
insert into guest02 values (1,'guest','test1');
insert into guest02 values (2,'guest','test22');
insert into guest02 values (3,'guest','test333');
insert into guest02 values (4,'guest','test4444');
insert into guest02 values (5,'guest','test55555');
commit;