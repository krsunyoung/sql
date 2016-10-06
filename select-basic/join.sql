--Join
select * 
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID and salary>20000;
--조인조건을 넣어주고 그다음에 row 조건을 넣어준다.

--다른 테이블에 있는 똑같은 열명을 테이블 없이 열만 써주면 에러가 난다. 어느 열인지 모호 하기 때문에
--employee_id는 안써줘도 되지만 일관성있게 써주는것도 좋다.
--inner join(equi-join) 
select e.employee_id, d.department_id , e.first_name, d.DEPARTMENT_NAME
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID 	-- join 조건
	and e.SALARY>5000;						-- row 선택조건

--3개 테이블 연결 2개의 조인조건 	조인조건(테이블갯수-1)
select e.employee_id, d.DEPARTMENT_NAME, j.JOB_TITLE
from EMPLOYEES e, DEPARTMENTS d, JOBS j
where e.DEPARTMENT_ID = d.DEPARTMENT_ID and e.JOB_ID=j.JOB_ID;

--outer join  (+) null 값까지 나오게 할수 있는 있음. 덜 나오는 쪽에 + 
select *
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID (+)= d.DEPARTMENT_ID; 	
--null 값 나오는 아이들을 소속없음으로 바꿔서 출력
select nvl(e.first_name,'소속사원없음'), d.DEPARTMENT_NAME
from EMPLOYEES e, DEPARTMENTS d
where e.DEPARTMENT_ID (+)= d.DEPARTMENT_ID ;

--self join
select emp.FIRST_NAME, man.FIRST_NAME
from EMPLOYEES emp, EMPLOYEES man
where emp.MANAGER_ID (+)= man.EMPLOYEE_ID ;

select emp.FIRST_NAME, nvl(man.FIRST_NAME,'none manager')
from EMPLOYEES emp, EMPLOYEES man
where man.EMPLOYEE_ID (+)= emp.MANAGER_ID;

select count(*) from employees;
select * from EMPLOYEES e where e.MANAGER_ID is null;

 











   