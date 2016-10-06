--문) 각 부서별로 최고 연봉을 받는 직원의 이름과 연봉을 출력
select max(salary) from employees group by department_id;
select first_name, salary 
from employees 
where salary IN
	(select max(salary) from employees group by department_id);
	--이렇게 하면 다른 부서에 있는 연봉도 나올수 있으므로
	--아래와 같이 해준다.
--비교 연상이 두개 일 경우...............
select department_id, max(salary) from employees group by department_id;

select employee_id, first_name, salary 
from employees 
where (department_id, salary) IN
	(select department_id, max(salary) from employees group by department_id);
 --위아래 하는 방식 차이로 같음. 
 --테이블로 볼수 있으니
 select a.employee_id, a.first_name, a.SALARY
 from employees a,( select department_id, max(salary) as MA_SA
	 				from employees group by department_id ) b 
 where a.DEPARTMENT_ID = b.department_id
 	and a.SALARY=b.MA_SA;
	 
--외부에 있는 테이블과 연결  연관조인?
select a.FIRST_NAME, a.SALARY
from employees a
where salary = 
	(select max(salary) from employees where department_id = a.department_id); 










