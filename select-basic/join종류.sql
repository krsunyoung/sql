-- ansi join sql문 (1999 syntax)

--natural join 테이블의 컬럼이름이 같을 경우에만
--잘쓰이지 않음. 
select e.first_name, d.DEPARTMENT_NAME from EMPLOYEES e natural join DEPARTMENTS d;
--natural 은 자동으로 같은 이름끼리 묶는다.  위에 join 이 whre e.manager_id = d.manager_id 로 묶여있다.
select count(*) from EMPLOYEES e , DEPARTMENTS d
where e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--using 
select count(*) from EMPLOYEES e join departments b using(DEPARTMENT_id);
--equi
--inner join 표준 SQL문
select count(*) from EMPLOYEES e join departments b on e.DEPARTMENT_ID=b.DEPARTMENT_ID;

--outer join 표준 SQL문
--많은 것을 right 쪽에 넣는다.
select count(*)
from DEPARTMENTS d
right outer join  EMPLOYEES e
on e.DEPARTMENT_ID = d.DEPARTMENT_ID ;
--left join
select count(*)
from EMPLOYEES e
left outer join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID ;




