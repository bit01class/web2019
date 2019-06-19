drop table guest02;
drop table user02;
drop sequence guest02_seq;
drop sequence user02_seq;

create table user02(
	num number primary key,
	id varchar2(30) unique,
	pw varchar2(30) not null,
	name varchar2(30)
);
create table guest02(
	num number primary key,
	sub varchar2(30),
	unum number,
	nalja date,
	pay number,
	foreign key(unum) references user02(num)
);

create sequence user02_seq;
create sequence guest02_seq;

--dummy
insert into USER02 values 
	(user02_seq.nextval,'master','1234','包府磊');
insert into USER02 values 
	(user02_seq.nextval,'user01','1234','蜡历1');
insert into USER02 values 
	(user02_seq.nextval,'user02','1234','蜡历2');
commit;

insert into guest02 values 
	(guest02_seq.nextval,'test01',1,sysdate,1111);
insert into guest02 values 
	(guest02_seq.nextval,'test02',3,sysdate,2222);
insert into guest02 values 
	(guest02_seq.nextval,'test03',2,sysdate,3333);
insert into guest02 values 
	(guest02_seq.nextval,'test04',3,sysdate,4444);
commit;


select a.num,a.sub,a.pay,b.name 
	from GUEST02 A, USER02 B where a.unum=b.num;

select num,sub,(select name from user02 where num=unum) as uname
						,pay from GUEST02;















