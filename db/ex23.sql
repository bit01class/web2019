create or replace procedure ex23
(v_num in number, v2_name out mytable10.name%type)
is
	v_name mytable10.name%type;
begin
	select name into v_name from mytable10 where num=v_num;
	v2_name := v_name;
end;
/