drop table user03;
drop sequence user03_seq;
create table user03(
	num number primary key,
	id varchar2(20),
	pw varchar2(16),
	name varchar2(15)
);
create sequence user03_seq;
-- dummy
insert into user03 values (user03_seq.nextval,'root','1234','관리자');
insert into user03 values (user03_seq.nextval,'user01','1234','회원1');
insert into user03 values (user03_seq.nextval,'user02','1234','회원2');
commit;
exit;