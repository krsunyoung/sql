--transaction savepoint
commit;

select * from book;
 
--DML1
insert into book values( 4, '토지4',sysdate, '대여중',1);

--savepoint a
savepoint a;

--DML2
delete from book where no=4;

--savepoint b
savepoint b;

--DML3
insert into book values( 5, '토지5',sysdate, '대여중',1);

--test
rollback to b; --savepoint 위치를 지정한 만큼 b에 저장한 세이브 포인트로 돌아간다. 

savepoint b;
select * from book;

rollback to a;
select * from book;

rollback;


