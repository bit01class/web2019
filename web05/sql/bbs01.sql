drop table bbs01;
drop sequence bbs01_seq;
create table bbs01(
	num number primary key,
	sub varchar2(30) default '제목없음',
	content varchar2(2000),
	nalja date default sysdate,
	cnt number default 0
);
create sequence bbs01_seq;
-- dummy
insert into bbs01 (num,sub,content) 
	values (bbs01_seq.nextval,'test01','test');
insert into bbs01 (num,sub,content) 
	values (bbs01_seq.nextval,'test02','test');
insert into bbs01 (num,sub,content) 
	values (bbs01_seq.nextval,'test03','test');
insert into bbs01 (num,sub,content) 
	values (bbs01_seq.nextval,'test04','test');
commit;












