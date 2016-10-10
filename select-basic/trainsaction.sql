commit;

select * from book;

update book set title ='토지3' where no=2; 
--commit 이나 rollback 하기전에  다른곳에서 update나 뭐가를 하면 멈춰있는 상태이다. 
--다른곳에서 마저 작업을 할려면 commit이나 rollback을 해줘라

--trainsaction type
set transaction read only;
select * from book;

delete from book;

commit;
set transaction read write;
select * from book;
insert into book values(4,'토지4',sysdate, '대여중', 1);

--isolation type 
--**********이해안가****************** & DeadRock(교착상태) 둘다 commit이나 rollback 둘다 안되는상태
--transation을 많이 하는이유 리커버리때문에 ?
set transaction isolation level serializable;  -- 늦게 시작한 놈이 lock 걸림.
update book set title ='토지2' where no = 2;
commit;
