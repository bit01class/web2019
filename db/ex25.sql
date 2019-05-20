create or replace trigger trg01
before insert on mytable10
begin
	dbms_output.put_line('입력이 일어날 것입니다');
end;
/
create or replace trigger trg02
after insert on mytable10
begin
	dbms_output.put_line('입력이 일어났습니다');
end;
/