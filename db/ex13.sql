declare
	v_empno emp.empno%type;
	v_ename emp.ename%type;
	v_sal emp.sal%type;
begin
	select empno,ename,sal into v_empno,v_ename,v_sal from emp where empno=7369;
	dbms_output.put_line('사번:'||v_empno);
	dbms_output.put_line('이름:'||v_ename);
	dbms_output.put_line('금액:'||v_sal);
end;
/