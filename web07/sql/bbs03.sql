drop table bbs03;
drop sequence bbs03_seq;
create table bbs03(
	num number primary key,
	sub varchar2(30),
	content varchar2(2000),
	id varchar2(20),
	nalja date
);
create sequence bbs03_seq;
-- dummy
insert into bbs03 values (bbs03_seq.nextval,'����1'
				,'����1','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'����2'
				,'����2','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'����3'
				,'����3','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'����4'
				,'����4','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'����5'
				,'����5','root',sysdate);
commit;
exit;