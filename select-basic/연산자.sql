-- 산술 연산자
-- dual 에 테이블 대신 쓰면 결과값 하나가 나온다.

select 100+ 200 from DUAL;

--true, false 는 where절에서만 가능


select employee_id, salary as "본봉", salary+salary * 0.3 as "보너스"  from EMPLOYEES;

select -salary from EMPLOYEES;
 
 