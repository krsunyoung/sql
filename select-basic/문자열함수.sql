--문자열함수
--소문자
select lower('Database Management System') from dual;
select first_name,lower(first_name) from employees;
--대문자
select upper('Database Management System') from dual;
select last_name,upper(last_name) from employees;
--첫글자 대문자 변경
select initcap('database management system') from dual;
-- 문자연결[ concat mysql에 변경안해도 되지만||mysql 에서는 변경해줘야 한다.]
select concat(concat(first_name,' '), last_name) from employees;
select first_name ||' '|| last_name from employees;
-- 중간 문자 출력 !  DB는 인덱스 1부터 시작 한다  !!!!!!!
select substr('Database Management System',2,4) from dual;
-- 길이 구하기
select length('Database Management System') from dual;
-- 어디에 있는지 위치 찾아주기
select instr('Database Management System','Sys') from dual;
select instr(lower('Database Management System'),'sys') from dual;
-- 빈공백 채우기
select employee_id, LPAD(salary,10,'*') from EMPLOYEES;
-- 오른쪽에 채우기
select employee_id, RPAD(salary,10,'*') from EMPLOYEES;
-- 빈공백 지우기
select trim('#' from '####Data###Database###') from dual;
select '---'||trim(' ' from ' Data base     ')||'---' from dual;
--
select '---'||ltrim(' ' , '      Data base     ')||'---' from dual;
select '---'||rtrim(' ' , '      Data base     ')||'---' from dual;

select replace('Database Management System','System','Sys.') from dual;

