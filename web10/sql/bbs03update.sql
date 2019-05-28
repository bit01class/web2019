create or replace procedure bbs03update
(result out binary_integer,pnum in bbs03.num%type
	,psub in bbs03.sub%type,pcontent bbs03.content%type)
is
begin
	update bbs03 set sub=psub,content=pcontent where num=pnum;
	result:=sql%rowcount;
	commit;
end;
/