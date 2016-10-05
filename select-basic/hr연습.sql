-- 주석처리 (전체 주석은 없음)
desc employees; 
-- 테이블을 설명
select EMPLOYEE_ID, LAST_NAME from EMPLOYEES;

select * from EMPLOYEES;
select last_name from EMPLOYEES;
select last_name as "성" from EMPLOYEES;

select last_name , first_name from EMPLOYEES;

select last_name || ' ' || first_name as "성명" from EMPLOYEES;
--문자연결 연산자 [오라클에서만 가능]

