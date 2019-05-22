drop table user02;
drop sequence user02_seq;
create table user02 (
	num number primary key,
	id varchar2(20) not null,
	pw varchar2(16) not null,
	name varchar2(15) not null,
	class varchar2(7),
	tel varchar2(11)
);
create sequence user02_seq;
-- dummy
insert into user02 values (user02_seq.nextval
		,'root','1234','admin','class03','01012341234');
insert into user02 values (user02_seq.nextval
		,'user01','1234','Ã¹¹øÂ°','class03','01012345678');
commit;