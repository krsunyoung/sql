-- 1
select first_name ||' '||last_name as "이름", salary "급여", phone_number "전화번호"
  from EMPLOYEES order by hire_date asc;

-- 2 
select job_title, max_salary from jobs order by max_salary desc; 

-- 3
select count(*) from EMPLOYEES where MANAGER_ID is null;

-- 4
select job_id,salary from employees order by salary desc;
select * from jobs where job_id='AD_PRES';

-- 5
select count(*) from departments;

-- 6
select * from departments order by length(department_name) desc;

select last_name, length(last_name) from employees;
select department_name from department;

--7
select count(*) from DEPARTMENTS  where manager_id is null;

select count(*) from departments;
--8
select upper(city) "도시" from locations order by city ;
select upper(country_name) "나라" from countries order by country_name;
 
select department_name, upper(department_name) from DEPARTMENTS ;


--9
select count(distinct city) from locations;
select city, length(city) from locations order by length(city) ;

select count(*) from regions;
select region_name from regions order by region_name asc;

select distinct count(city) from locations ;
select * from locations;  

--10  distinct first_name  // first_name
select distinct lower(city) from locations order by lower(city) asc;

select distinct location_id from departments where location_id is not null;
select lower(city) from locations  
where location_id IN (1400,1500,1700,1800,2400,2500,2700)  order by city asc ;
select * from locations;


