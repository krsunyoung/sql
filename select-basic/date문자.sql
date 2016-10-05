-- date -> 문자열

select employee_id, hire_date from EMPLOYEES ;
 
select employee_id, to_char(hire_date,'yyyy-mm-dd hh:mi:ss') as "일자" from EMPLOYEES ;

select employee_id, to_char(hire_date,'yyyy"년" mm"월" dd"일" PM hh"시"mi"분"ss"초"') as "일자" from EMPLOYEES ;

select employee_id, to_char(hire_date,'yyyy"년" mm"월" dd"일" hh24"시"mi"분"ss"초" day' ) as "일자" from EMPLOYEES ;
select employee_id, to_char(hire_date,'yyyy"년" mm"월" dd"일" day ddd"일째되는날" ' ) as "일자" from EMPLOYEES ;

select employee_id, to_char(hire_date, 'year:syear')from employees;
--RR 기준이 있음. 
select employee_id, to_char(hire_date, 'RR')from employees;