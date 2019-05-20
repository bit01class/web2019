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
	dbms_output.put_line('평균연봉:'||v_avg);
	if(v_sal<v_avg) then
		dbms_output.put_line(v_ename||'은 저임금노동자입니다');
	elsif (v_sal>=3000) then	
		dbms_output.put_line(v_ename||'은 고액연봉자입니다');
	else
		dbms_output.put_line('받을만큼 받음');
	end if;
end;
/