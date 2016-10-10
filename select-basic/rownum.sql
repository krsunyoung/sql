--rownum

--문제 직원 중에 월급이 상위 10~20까지 골라 낸다.
--rownum을 그냥 쓰면 번호가 뒤죽박죽이 된다.
--rownum 이 세팅된 이후에 roder by 가 실행되므로 순서가 엉키게 됨.
select employee_id, salary , rownum  
from employees 
order by salary;

--해결방법
-- 이상한 rownum 왜그럴까????????  
--(where 절에서 rownum 조건이 안맞기 때문에 선택된 row가 하나도 없음->문제)
select employee_id, salary
from (select employee_id, salary,rownum as"번호" from employees order by salary desc)
where rownum>10 and rownum<20;
--rownum =>1 나옴... 왜 ? 
--최종 해결방안
select *
from(
	select employee_id, salary,rownum as rn
	from (
		select employee_id, salary from employees order by salary desc
		 )
	)
where rn >=10 and rn <=20;





