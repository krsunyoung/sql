--제약조건 [ constraint ]


drop table book cascade constraints;

create table book(
	no number(10) , 
	-- not null  ->null 값이 들어가지 않음
	title varchar2(100) not null ,--not null
	pub_date date not null,
	state varchar2(12) not null,
	--author varchar2(80),
	author_no number(10) not null,
	--not null 은 위에 나머지는 아래에 해주는것이 좋다. 
	--constraint c_book_u unique(no) --unique 
	--constraint c_book_u unique(no, title)
	--unique 은 null 을 포함해 가능하다.  
	primary key(no),
	constraint c_book_fk_ foreign key (author_no) references author(no)
	--on delete cascade
	on delete set null ,
	--primary key은 null 불포함.
	constraint c_book_check check(state in('대여중','대여가능')) 
	--2개의 단어를 제외한 나머지 단어들은 입력이 불가하다. 
);


insert into book 
values(1, '토지1',to_date('2005/03/12','yyyy/mm/dd'),'대여중',1); 
insert into book 
values(2, '토지2',to_date('2005/03/12','yyyy/mm/dd'),'대여가능',2); 
insert into book 
values(3, '토지3',to_date('2005/03/12','yyyy/mm/dd'), '대여가능',2); 


delete from author where no=2;
--무결성 유지 때문에 오류 난다. book 에서 author no2를 참조 하고 있기때문에
--제약조건에 on delete cascade 를 써주면 delete가 되서 book 에 있는 참조 하고 있는 row가  다지워진다.
--on delete set null 로 했을 경우에는 no =2 를 지웠을때 참고 하고 있는 값이 null로 변한다. 
--근데 조건에 not null 로 되어있으면 또 에러 남

create table author(
	no number(10),
	name varchar2(20) not null,
	primary key(no)
);

insert into author values(1,'박경림');
insert into author values(2,'이문열');

select * from author;

drop table author cascade constraint;



