--DML

select * from employees where department_id=50;

--UPDATE
update employees 
set salary = salary * 1.1, commission_pct = 0
where department_id= 50;

update employees 
set salary = (select max(salary) from employees); 

--delete
delete from employees where employee_id=100;
--에러난 이유 : 참조키가 있는 경우 삭제 할수 없다. employee_id를 참조 하고 있는 애들이 잇어서 삭제가 되지 않는다.
--참조 하고 있는 아이를 먼저 지우고 그다음에 여기에서 지우면 삭제가 된다.

--rowid


--그냥 꺼버리면 컴터에서 자동으로 commit 을 날리고 꺼질수도 있으므로 rollback을 하던가 commit을 날리시오.
rollback;