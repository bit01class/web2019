declare
	v_row mytable10%rowtype;
	cursor c1 is (select * from mytable10);
begin
	for v_row in c1 loop
		dbms_output.put_line(v_row.num||','||v_row.name);
	end loop;
end;
/