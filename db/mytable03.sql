-- 주석
drop table mytable04;

drop table mytable03;

create table mytable04(
	deptno number primary key,
	loc varchar2(6),
	nalja date 
);

create table mytable03(
	sabun number,
	name varchar2(3),
	-- 제약조건의 이름 부여 constraint 제약조건명
	-- num number constraint mytable03_num_fk 
	--		references mytable04(deptno)
	-----------
	num number,
	constraint mytable03_num_fk
	 foreign key(num) references mytable04(deptno),
	constraint mytable03_sabun_pk primary key(sabun)
);

insert into mytable04 values (100,'서울','2019/01/01');
insert into mytable04 values (200,'부산','2019/02/01');
insert into mytable04 values (300,'대구','2019/03/01');









