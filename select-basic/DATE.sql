--Date

select * from employees;
-- 기본포맷
select employee_id, hire_date from employees;
select value from nls_session_parameters where parameter='NLS_DATE_FORMAT';

select ADD_MONTHS( '16/10/05' , 4) from dual;
-- 되기는 하지만 기본 포맷에 맞춰주는것이 좋다.
select ADD_MONTHS( '16 10 05' , 4) from dual;

select ADD_MONTHS( SYSDATE , 4) from dual;
select LAST_DAY( SYSDATE) from dual;
select MONTHS_between( ADD_MONTHS( '16/10/05',4), SYSDATE ) from dual;

select employee_id,job_id, 
round(months_between(end_date,start_date)) 
from job_history; 

-- 1->SUN, 2, 3, 4, 5, 6, 7->SAT
select next_day('16/10/05',4) from dual;
 
select salary from EMPLOYEES;
-- 보이는 포맷 형식 변경 . 1000 단위로 , 찍어주게끔 만들어준다.
-- to_char는 맣이 쓰이지 않음. to_number는 더 안쓰인다. 
select to_char(salary,'999,999,999') from EMPLOYEES;




