--nvl (null 관련 함수)

select nvl(null,0) from dual;
select nvl(1,0) from dual;

select employee_id, nvl(commission_pct, 0),
nvl(commission_pct, 0)*salary from employees;

select nvl2(null, 10, 0) from dual;

select employee_id, nvl2(commission_pct,commission_pct*salary, 0) from employees;

select employee_id, 
nvl2(commission_pct,commission_pct*salary+salary, salary)as "지급월급"
from employees;

select nullif(6, 3+2) from dual;
--충돌 ?? 앞에것을 친다?? null을 안만날때까지 다음 파라미터를 찾아낸다.
select coalesce(null, null, 3, 4, 5) from dual;
select coalesce(1, null, 3, 4, 5) from dual;
--숫자지만 문자로 받아들이기 위해서 to_char를 써줌 . 하지만 써줄일은 없다. 
select employee_id, nvl(to_char(manager_id), '없음') from employees;


