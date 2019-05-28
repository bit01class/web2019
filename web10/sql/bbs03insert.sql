create or replace procedure bbs03insert
(psub bbs03.sub%type,pid bbs03.id%type,pcontent bbs03.content%type)
is
begin
  insert into bbs03 values(bbs03_seq.nextval,psub,pcontent,pid,sysdate);
  commit;
end;
/
