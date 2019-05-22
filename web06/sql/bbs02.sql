drop table bbs02;
drop sequence bbs02_seq;
create table bbs02(
	num number primary key,
	sub varchar2(30),
	content varchar2(2000),
	id varchar2(20),
	nalja date default sysdate,
	ip varchar2(15)
);
create sequence bbs02_seq;
--dummy
insert into bbs02 values (bbs02_seq.nextval
		,'����1','����1','guest',sysdate,'127.0.0.1');
insert into bbs02 values (bbs02_seq.nextval
		,'����2','����2','guest',sysdate,'127.0.0.1');
insert into bbs02 values (bbs02_seq.nextval
		,'����3','����3','guest',sysdate,'127.0.0.1');
insert into bbs02 values (bbs02_seq.nextval
		,'����4','����4','guest',sysdate,'127.0.0.1');
commit;









