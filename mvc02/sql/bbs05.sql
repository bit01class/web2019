drop table bbs05;
drop sequence bbs05_seq;

create table bbs05(
	num number primary key,
	sub varchar2(30),
	content varchar2(2000),
	name varchar2(15),
	nalja date
);
create sequence bbs05_seq;

-- dummy
insert into bbs05 values 
	(bbs05_seq.nextval,'test1','test','tester',sysdate);
insert into bbs05 values 
	(bbs05_seq.nextval,'test2','test','tester',sysdate);
insert into bbs05 values 
	(bbs05_seq.nextval,'test3','test','tester',sysdate);
insert into bbs05 values 
	(bbs05_seq.nextval,'test4','test','tester',sysdate);
insert into bbs05 values 
	(bbs05_seq.nextval,'test5','test','tester',sysdate);
commit;
select * from bbs05;










