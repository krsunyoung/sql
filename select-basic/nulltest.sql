--null test
select * from EMPLOYEES;
select employee_id,salary, commission_pct from EMPLOYEES;

select employee_id,salary, commission_pct, salary+nvl(COMMISSION_PCT,0)*SALARY as "보너스" from EMPLOYEES;
select employee_id,salary, commission_pct, salary+COMMISSION_PCT*SALARY as "보너스" from EMPLOYEES;
select nvl(null,  10) from dual;
--만약 null 값이면 10으로 바꿔라. 

--nvl test
select employee_id, nvl(manager_id, 0) from EMPLOYEES;