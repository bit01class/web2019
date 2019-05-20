declare
	num binary_integer;
	v_str VARCHAR2(10) := NULL;
begin
	num :=0;
	loop
		dbms_output.put_line(v_str);
		v_str :=v_str||'*';
		num:=num+1;
		if num=5 then
			exit;
		end if;
	end loop;
	
end;
/