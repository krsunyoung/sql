--null test
select * from EMPLOYEES;
select employee_id,salary, commission_pct from EMPLOYEES;

select employee_id,salary, commission_pct, salary+nvl(COMMISSION_PCT,0)*SALARY as "���ʽ�" from EMPLOYEES;
select employee_id,salary, commission_pct, salary+COMMISSION_PCT*SALARY as "���ʽ�" from EMPLOYEES;
select nvl(null,  10) from dual;
--���� null ���̸� 10���� �ٲ��. 

--nvl test
select employee_id, nvl(manager_id, 0) from EMPLOYEES;