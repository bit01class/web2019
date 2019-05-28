declare
	su binary_integer:=0;
begin
	bbs03update(su,8,'aa','bb');
	dbms_output.put_line('¼öÁ¤'||su||'°³');
end;
/