create or replace trigger trg01
before insert on mytable10
begin
	dbms_output.put_line('�Է��� �Ͼ ���Դϴ�');
end;
/
create or replace trigger trg02
after insert on mytable10
begin
	dbms_output.put_line('�Է��� �Ͼ���ϴ�');
end;
/