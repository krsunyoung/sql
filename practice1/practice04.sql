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

--4-1번 자신의 부서의 평균 연봉보다 크거나 같은 직원들의 사번, 부서넘버, 이름, 연봉 출력
select e.department_id, e.employee_id, e.last_name, e.salary
from EMPLOYEES e ,
	(select department_id,0 , avg(salary) as "평균"  from employees group by department_id) b
where nvl(e.DEPARTMENT_ID,0)  = nvl(b.department_id,0)    
	and e.SALARY>=b."평균"
	order by e.department_id;
--null값을 나오게 하기 위해서는 어떻게 해야하는가 ?
--where 절에 nvl 을 넣어줌으로써 null값이 나옴. 만약 nvl을 써주지 않으면 null값은 비교를 할수 없어서 값에 출력 되지 않는다.

