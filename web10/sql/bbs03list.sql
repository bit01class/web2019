create or replace procedure bbs03list
(pcursor out sys_refcursor)
is
begin
	open pcursor for SELECT * FROM BBS03 ORDER BY NUM DESC;
end;
/