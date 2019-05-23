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
insert into bbs03 values (bbs03_seq.nextval,'力格1'
				,'郴侩1','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'力格2'
				,'郴侩2','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'力格3'
				,'郴侩3','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'力格4'
				,'郴侩4','root',sysdate);
insert into bbs03 values (bbs03_seq.nextval,'力格5'
				,'郴侩5','root',sysdate);
commit;
exit;