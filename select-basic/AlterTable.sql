--alter table

alter table book add(pubs varchar2(120));
--commit, rollback 소용없음

Alter table book modify(pubs varchar2(200));

--칼럼 이름 변경
Alter table book rename column bublishing to publishing;

--칼럼 삭제
alter table book drop(publishing);
alter table book drop column publishing;
--둘다 가능하네... 

--unused  나오지를 않는다. 데이터 지우기 싫고 혹시 나중에 볼수도 있을때 사용한다.
alter table book set unused(author);












