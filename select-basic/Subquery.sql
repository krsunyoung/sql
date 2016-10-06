-- subquery

select * from employees;

--문) 이름(first_name) 이 Les 사원보다 월급이 많은 직원들 이름과 월급
select salary from employees where first_name ='Lex';
select first_name, salary from employees where salary>17000;
--위와 동일
--아래 서브쿼리는 한개의 결과만 나와야 하는데 David 같은 여러 명의 이름이 있는 경우에는 에러 난다.
--비교문에서는 single row
select first_name, salary 
from employees 
where salary>(select salary from employees where first_name='Lex');
