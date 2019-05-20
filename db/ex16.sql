declare
	-- v_dname dept.dname%type;
	-- v_loc dept.loc%type;
	v_dept dept%rowtype;
begin
	for cnt in 1..4 loop
		select * into v_dept from dept 
			where deptno=cnt*10;
		dbms_output.put_line(v_dept.deptno||','
			||v_dept.dname||','||v_dept.loc);
	end loop;
end;
/