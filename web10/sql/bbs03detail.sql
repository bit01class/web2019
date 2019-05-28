create or replace procedure bbs03detail
(pnum in bbs03.num%type, pcursor out sys_refcursor)
is
begin
	open pcursor for select * from bbs03 where num=pnum;
end;
/