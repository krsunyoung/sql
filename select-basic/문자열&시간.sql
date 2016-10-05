-- 문자열 리터럴 vs alias 이름

select 'Hello' || ' '|| 'World' "T EXT" from dual;

select first_name ||' '|| last_name as "나의 이름" from EMPLOYEES;

select sysdate from dual;

select to_char(sysdate,'YY/MM/DD') from dual; 
--날짜 기본형식

select to_char(sysdate,'YYYY/MM/DD HH:mm:SS pm') "TIME" from dual;