--DML

select * from author;
select * from book;

--insert
insert into author values(1,'박경리');

insert into book values(1,'토지',to_date('1985-01-01','yyyy-mm-dd'), '대여가능',1 );
--위와 같이 만들어졌으면 author에 작가정보다 book에 fk로 들어가있기 때문에 삭제를 맘대로 할수 없다.
insert into book (author_no, no, title, pub_date, state )
values(1, 2,'토지2',to_date('1985-01-02','yyyy-mm-dd'), '대여가능');
--열 이름을 서브쿼리로 가져올수 있다. 행값 하나만 나오게끔.

--update

commit;
--session 별로 다르기 때문에 commit을 해야 다른 세션이 보여진다. 두개의 bitdb를 따로 연결했을때



















