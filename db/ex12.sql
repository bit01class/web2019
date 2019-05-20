declare
	-- 레퍼런스 변수
	num emp.empno%type;
begin
	num := 11223;
	dbms_output.put_line('num='||num);
end;
/