-- �������ν���
create or replace procedure ex22
(num number,num2 number)
is
	-- ���������
begin
	-- �����
	update bonus set sal=sal*num2 where comm=num;	
	dbms_output.put_line('�����λ�Ϸ�!!!!');
end;
/