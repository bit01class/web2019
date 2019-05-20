-- 저장프로시저
create or replace procedure ex22
(num number,num2 number)
is
	-- 변수선언부
begin
	-- 실행부
	update bonus set sal=sal*num2 where comm=num;	
	dbms_output.put_line('연봉인상완료!!!!');
end;
/