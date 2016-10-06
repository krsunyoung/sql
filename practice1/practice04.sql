--1번
select count(*) from employees
where salary < (select avg(salary) from employees);

--2번
select employee_id, last_name, salary, department_id from employees
where (department_id, salary) IN 
 (select department_id, max(salary) from employees group by department_id)
order by salary desc;
 
--3번
select j.JOB_TITLE, c."연봉 총합"
from JOBS j , 
	(select job_id, sum(salary) as "연봉 총합" from employees group by job_id ) c
where j.JOB_ID=c.job_id
order by c."연봉 총합" desc;

--4번
select b.department_id, e.employee_id, e.last_name, e.salary
from EMPLOYEES e ,
	(select department_id, avg(salary) as "평균"  from employees group by department_id) b
where e.DEPARTMENT_ID = b.department_id 
	and e.SALARY>b."평균"
order by b.department_id;


