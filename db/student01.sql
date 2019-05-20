
drop table student01;
create table student01(
	num number primary key,
	kor number(3) default 0,
	eng number(3),
	math number(3),
	constraint student01_eng_ch check (eng in (100,80,60,0)),
	constraint student01_math_ch check(math>=0 and math<=100)
);