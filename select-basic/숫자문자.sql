-- 숫자 ->문자열

select employee_id, salary from employees;
--소수점을 줄여준다. 자리수보다 적으면 나오지 않음. #이 나오면 자릿수가 적게 포맷팅 된것. 
select employee_id, to_char(salary,'9999999999999') from employees;
--빈자리에 0이 들어간다.
select employee_id, to_char(salary,'09999') from employees;
--지정위치에 , 
select employee_id, to_char(salary,'99,999') from employees;
--소수점
SELECT to_char(3.14158921,'9.99') from dual ;
SELECT to_char(3.14158921,'9.99999') from dual ;

select employee_id, to_char(salary,'FM99999') from employees;
select employee_id, to_char(salary,'$99999') from employees;
--원화표시
select employee_id, to_char(salary,'L99999') from employees;
--음수부호
select employee_id, to_char(salary,'99999MI') from employees;
select to_char('-1234','99999MI') from dual;
select to_char('-1234','S99999') from dual;
select to_char('1234','S99999') from dual;
select to_char('0','S99999') from dual;

--음수는 괄호 안에
select to_char('-1234','99999PR') from dual;
--로마자
select to_char(1234,'RN') from dual;
select to_char(1234,'rn') from dual;
--16진수
select to_char(1234,'XXX') from dual;






