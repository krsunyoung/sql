--single row subquery

select first_name, salary 
from employees 
where salary>(select salary from employees where first_name='Lex');

select first_name, salary 
from employees 
where salary=(select salary from employees where first_name='Lex');

select first_name, salary 
from employees 
where salary < (select salary from employees where first_name='Lex');

select first_name, salary 
from employees 
where salary != (select salary from employees where first_name='Lex'); 
-- [ !=,  <> ] 두개 같은의미 ]

--문) 전체 직원의 평균 연봉 보다 더 많이 받는 직원의 이름과 연봉
select avg(salary) from employees;
select first_name , salary from employees where salary>6461.83;
--위아래 같음
select first_name, salary from EMPLOYEES
where salary > (select avg(salary) from employees);  








