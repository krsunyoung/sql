--1번
select Max(salary) "최고임금" , min(salary) as "최저임금", 
	max(salary)-min(salary) as "최고임금 - 최저임금"
from EMPLOYEES ; 

--2번
select to_char(max(hire_date),'yyyy"년" mm"월" dd"일') "마지막신입입사일" 
from employees;

--3번
select department_id , round(avg(salary)) as "평균임금", max(salary) as "최고임금", min(salary) as "최저임금" 
from EMPLOYEES 
group by department_id 
order by avg(salary) desc, max(salary) desc, min(salary) desc;

--4번
select job_id , avg(salary) as "평균임금", max(salary) as "최고임금", min(salary) as "최저임금"
from employees
group by job_id 
order by avg(salary) desc, max(salary) desc, min(salary) desc;

--**************5번 *************************

select to_string(min(hire_date),'YYYY "년" MM"월" DD"일"') 
from employees ;
---------------------------
select max(SYSDATE - hire_date)
from employees ;
---------------------------
--6번
select avg(salary) "평균임금" , min(salary) "최저임금" , avg(salary)-min(salary) "평균임금-최저임금"
from employees 
group by department_id 
having avg(salary)-min(salary) > 2000
order by "평균임금-최저임금" desc;

--7번
select department_id, max(salary)-min(salary) "임금차이" 
from employees 
group by department_id
order by max(salary)-min(salary) desc ;
select department_name,department_id from departments where department_id = 30;


select job_id, max(salary)-min(salary) "임금차이"
from employees
group by job_id
order by "임금차이" desc;
select job_title from jobs where job_id='SA_REP';


select * from jobs;
select max(max_salary-min_salary) "차이" from jobs;
