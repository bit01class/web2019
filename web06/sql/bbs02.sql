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
		,'力格1','郴侩1','guest',sysdate,'127.0.0.1');
insert into bbs02 values (bbs02_seq.nextval
		,'力格2','郴侩2','guest',sysdate,'127.0.0.1');
insert into bbs02 values (bbs02_seq.nextval
		,'力格3','郴侩3','guest',sysdate,'127.0.0.1');
insert into bbs02 values (bbs02_seq.nextval
		,'力格4','郴侩4','guest',sysdate,'127.0.0.1');
commit;









