declare
type bbs_record_type is record(
	pnum bbs03.num%type,
	psub bbs03.sub%type,
	pcontent bbs03.content%type,
	pid bbs03.id%type,
	pnalja bbs03.nalja%type
);
bbs_record bbs_record_type;
pcursor sys_refcursor;
begin
	bbs03detail(1,pcursor);
	-- bbs03list(pcursor);
	loop
		fetch pcursor into bbs_record;
		exit when pcursor%notfound;
		dbms_output.put_line(bbs_record.pnum||
					', '||bbs_record.psub||
					', '||bbs_record.pcontent||
					', '||bbs_record.pid||
					', '||bbs_record.pnalja);
	end loop;
	close pcursor;
end;
/