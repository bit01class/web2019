declare
	v_empno emp.empno%type;
	v_ename emp.ename%type;
	v_sal emp.sal%type;
	v_avg number;
begin
	v_empno :=7788; -- 7369;

	select avg(sal) into v_avg from emp;

	select ename,sal into v_ename,v_sal 
			from emp where empno=v_empno;
	dbms_output.put_line('��տ���:'||v_avg);
	if(v_sal<v_avg) then
		dbms_output.put_line(v_ename||'�� ���ӱݳ뵿���Դϴ�');
	elsif (v_sal>=3000) then	
		dbms_output.put_line(v_ename||'�� ��׿������Դϴ�');
	else
		dbms_output.put_line('������ŭ ����');
	end if;
end;
/