--where test

select EMPLOYEE_ID, SALARY from EMPLOYEES where salary >=10000;

select EMPLOYEE_ID, SALARY from EMPLOYEES where salary <10000 and  SALARY >5000;

select EMPLOYEE_ID, SALARY from EMPLOYEES where  salary between 5000 and  10000;


select employee_id, manager_id from EMPLOYEES where manager_id is null;
-- 반대는 is not null;



--like 검색

select first_name from EMPLOYEES where first_name Like 'E%';

select first_name from EMPLOYEES where first_name Like '%a';

select first_name from EMPLOYEES where first_name Like '%ra%';

select first_name from EMPLOYEES where first_name Like 'E____';


select employee_id, department_id, salary from EMPLOYEES order by DEPARTMENT_ID asc;

select employee_id, department_id, salary from EMPLOYEES order by DEPARTMENT_ID , salary ;