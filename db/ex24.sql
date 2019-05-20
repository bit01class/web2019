create or replace function func01
(msg bonus.ename%type)
return number
is
	num number;
begin
	select count(*) into num from bonus where ename=msg;	
	-- (x) update bonus set ename=msg;
	return 1234;	
end;
/