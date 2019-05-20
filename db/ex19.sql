declare
	v_deptno dept.deptno%type;
	v_loc dept.loc%type;
	num number;
begin
	v_deptno :=50;
	select loc into v_loc from dept where deptno=v_deptno;	
	-- update mytable10 set name='test';  
	-- num := SQL%ROWCOUNT;
	-- dbms_output.put_line(num||'개 수정됨');
	dbms_output.put_line(v_loc);
EXCEPTION
	when NO_DATA_FOUND then
		dbms_output.put_line('에러회피');	
end;
/