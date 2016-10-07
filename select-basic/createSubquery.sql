--subquery 를 이용해서 테이블 생성을 하면
-- 제약조건은 그대로 가져오지 않고 값만 가지고 온다.
create table employees_backup as(
	select * from EMPLOYEES 
);
--스키마를 전부다 받아오지 않는다. not null, varchar type 등등.. 임시테이블, 백업할때 사용

--create , drop 은 rollback 먹히지 않음. 조심히 다뤄야 한다잉.
drop table employees_backup;

create table employees_temp as(
	select * from EMPLOYEES 
);
select * from employees_temp;