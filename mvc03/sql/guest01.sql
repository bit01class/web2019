drop table guest01;
drop sequence guest01_seq;

create table guest01(
	num number primary key,
	sub varchar2(30),
	nalja date,
	pay number
);

create sequence guest01_seq;

insert into guest01 values (guest01_seq.nextval,'test1',sysdate,1111);
insert into guest01 values (guest01_seq.nextval,'test2',sysdate,2222);
insert into guest01 values (guest01_seq.nextval,'test3',sysdate,3333);
insert into guest01 values (guest01_seq.nextval,'test4',sysdate,4444);
commit;
select * from GUEST01;



