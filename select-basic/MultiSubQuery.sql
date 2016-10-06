--muㅣti row subquery

select * from EMPLOYEES ;

--문) job_id 가 'IT_PROG'인 직원들이 받는 연봉보다 많이 받는 직원을 출력
select salary from EMPLOYEES where job_id = 'IT_PROG';
 
select first_name , salary 
from employees
where salary > All( select salary from employees where job_id='IT_PROG'); 
--All 전부다 크다 [ max 랑 같은 의미....? ]

--문) job_id 가 'IT_PROG'인 직원들이 받는 연봉과 같은 연봉을 받는 직원을 출력
-- <any , = any, >any
select first_name , salary 
from employees
where salary IN( select salary from employees where job_id='IT_PROG'); 
 -- 여러가지 조건중 하나라도 만족할 경우 in은 or느낌
 --위아래 같은 의미
select first_name , salary 
from employees
where salary =any( select salary from employees where job_id='IT_PROG'); 


--exists
--결과가 한개라도 있어야 함. 
select first_name , salary 
from employees
where exists ( select salary from employees where job_id='IT_PROG'); 












