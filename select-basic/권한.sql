--dba에서
create user kick identified by "kickcar";
--권한부여 (접속권한) 제거
grant create session to kick;
revoke create session from kick;

--role 생성
create role reviewer;
drop role reviewer;
--모든 테이블을 select 할수 있는 권한을 롤(reviewer)에 부여
grant select any table to reviewer;
--롤(reviewer)에 롤(connect)을 추가
grant connect to reviewer;

--사용자 계쩡 (kickscar) 에 롤을 부여
grant reviewer to kick;

