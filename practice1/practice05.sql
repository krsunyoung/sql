--1번
select e.first_name ||' '|| e.last_name as "이름", e.salary, d.department_name
from EMPLOYEES e , DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
and e.hire_date = (select max(hire_date) from employees ); 

select * from employees where first_name='Amit';  

--2번
select e.employee_id, e.last_name, e.salary
from employees e ,
(select department_id, avg(salary) as "평균" from EMPLOYEES group by department_id) b
where e.DEPARTMENT_ID = b.department_id
and e.salary > b."평균";

--3번
select e.employee_id, e.first_name, e.last_name, j.job_title, e.salary
from EMPLOYEES e, JOBS j, 
(select department_id, avg(salary) as "부서평균" from EMPLOYEES group by department_id) b
where e.JOB_ID = j.JOB_ID
and e.DEPARTMENT_ID = b.department_id
and b."부서평균"= 
(select max(c."평균") from
(select department_id, avg(salary) "평균" from employees group by department_id) c );

 
--4번
select department_name 
from departments d, 
(select department_id, avg(salary) as "부서평균" from EMPLOYEES group by department_id) b
where d.DEPARTMENT_ID = b.department_id 
and b."부서평균"= 
(select max(c."평균") from
(select department_id, avg(salary) "평균" from employees group by department_id) c );


--5번
--select avg(salary) from employees group by 
--top-k 탑에서 몇번째를 가져오는것
select *
from( select rownum as rn, employee_id, salary
		from (select  employee_id, salary from employees order by salary desc ) ) 
where rn = 2;

select job_id, avg(salary)
from employees
group by job_id;

--6번
select job_title
from jobs j , EMPLOYEES e 
where j.JOB_ID=e.JOB_ID
and (select max(b."업무평균") from
(select job_id, avg(salary) as "업무평균" from employees group by job_id) ) b;

select max(avg(salary))   from employees group by department_id;




