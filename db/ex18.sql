declare
	i binary_integer:=0;
begin
	while i<5 loop
		dbms_output.put_line('���'||i);
	i:=i+1;
	end loop;
end;
/