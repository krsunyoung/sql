select * from user_objects where object_type='TABLE';

--제약조건 조회 constraint

select * from user_constraints ;
select * from user_constraints where table_name='BOOK'; 
--소문자로 book쓰면 나오지 않는다. 무조건 대문자로 사용

--제약조건 컬럼
select * from user_cons_columns;

--모든 사용자 확인
select * from dba_user;
--이것은 sysdba에서만 가능. [ DBA ]

--현재 접속한 계정 정보
select * from user_users;

select * from all_users;
--간단하게 다양한 유저네임들이 나옴
















