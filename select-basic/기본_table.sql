--create table

create table book(
	no number(10),
	title varchar2(100), 
	author varchar2(80),
	pub_date date 
	
);


--insert 
insert into book 
values(1, '토지','박경리',to_date('2005/03/12','yyyy/mm/dd')); 
insert into book (title, no, author, pub_date)
values('슬램덩크',2,'다케이코',to_date('2006/04/05','yyyy/mm/dd')); 
--sysdate

--delete
delete from book where author = '박경리';


--update
update book set title ='슬램덩크2', pub_date = to_date('2007/04/05','yyyy/mm/dd')
where title='슬램덩크';

--commit <> rollback   
commit;
rollback;
select * from book;







	