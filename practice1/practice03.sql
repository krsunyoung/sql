--1번
select e.EMPLOYEE_ID "사번", e.FIRST_NAME "이름",
	 d.DEPARTMENT_NAME "부서명", man.FIRST_NAME "매니저"
from EMPLOYEES e, DEPARTMENTS d, EMPLOYEES man
where e.DEPARTMENT_ID = d.DEPARTMENT_ID and e.EMPLOYEE_ID = man.MANAGER_ID ;

--2번
select r.REGION_NAME "지역", c.COUNTRY_NAME "나라"
from REGIONS r, COUNTRIES c
where r.REGION_ID = c.REGION_ID 
order by r.REGION_NAME desc, c.COUNTRY_NAME desc;

--3번
select d.DEPARTMENT_ID "부서번호", d.DEPARTMENT_NAME "부서명", 
	man.FIRST_NAME "매니저",l.CITY "위치", c.COUNTRY_NAME "나라" , r.REGION_NAME "지역"  
from DEPARTMENTS d,  LOCATIONS l , COUNTRIES c, REGIONS r, employees man
where d.MANAGER_ID  = man.MANAGER_ID 
	and d.LOCATION_ID  = l.LOCATION_ID
	and l.COUNTRY_ID  = c.COUNTRY_ID
	and c.REGION_ID = r.REGION_ID
order by "부서번호";

--4번
select e.first_name||' '||e.last_name as "이름" 
FROM EMPLOYEES e , JOBS j, JOB_HISTORY h
where e.EMPLOYEE_ID = h.EMPLOYEE_ID
	and h.JOB_ID = j.JOB_ID
	and j.JOB_TITLE='Public Accountant';

--5번
--order by last_name

select e.EMPLOYEE_ID "사번", e.FIRST_NAME "이름", e.LAST_NAME "성", d.DEPARTMENT_NAME "부서"
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID
order by d.DEPARTMENT_NAME, e.LAST_NAME;

--6번
select e.EMPLOYEE_ID "사번", e.LAST_NAME "성", e.HIRE_DATE "입사일"
from EMPLOYEES e, EMPLOYEES man
where e.manager_id = man.EMPLOYEE_ID
	and e.HIRE_DATE<man.HIRE_DATE;
	


