declare
	v_num mytable10.num%type;
	v_name mytable10.name%type;
	c2 sys_refcursor;
begin
	open c2 for
		select * from mytable10;
	loop
		fetch c2 into v_num,v_name;
		dbms_output.put_line(v_num);
		dbms_output.put_line(v_name);
		if c2%NOTFOUND then
			exit;
		end if;
 	end loop;
	close c2;
end;
/