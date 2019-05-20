declare
	type dept_loc_type is table of dept.loc%type index by binary_integer;

	dept_loc_table dept_loc_type;
	i binary_integer :=0;
begin
	for cnt in 1..4 loop
		select loc into dept_loc_table(i) from dept 
			where deptno=cnt*10;
		i:=i+1;
	end loop;
	for cnt in reverse 0..i-1 loop
		dbms_output.put_line(dept_loc_table(cnt));
	end loop;
end;
/







