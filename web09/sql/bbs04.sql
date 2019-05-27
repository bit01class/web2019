drop table bbs04;
drop sequence bbs04_seq;
create table bbs04(
	num number primary key,
	sub varchar2(30),
	content varchar2(2000),
	nalja date,
	re_ref number,
	re_seq number,
	re_lev number
);
create sequence bbs04_seq;
-- dummy
insert into bbs04 values (bbs04_seq.nextval,'����1','�׽�Ʈ'
	,sysdate,bbs04_seq.currval,0,0);
insert into bbs04 values (bbs04_seq.nextval,'����2','�׽�Ʈ'
	,sysdate,bbs04_seq.currval,0,0);
insert into bbs04 values (bbs04_seq.nextval,'����3','�׽�Ʈ'
	,sysdate,bbs04_seq.currval,0,0);
insert into bbs04 values (bbs04_seq.nextval,'����4','�׽�Ʈ'
	,sysdate,bbs04_seq.currval,0,0);
insert into bbs04 values (bbs04_seq.nextval,'����5','�׽�Ʈ'
	,sysdate,bbs04_seq.currval,0,0);
commit;