--constraint2

drop table book;

create table book(
	no number(10) , 
	-- not null  ->null 값이 들어가지 않음
	title varchar2(100) not null ,--not null
	pub_date date not null,
	state varchar2(12) not null,
	--author varchar2(80),
	author_no number(10) not null
	--not null 은 위에 나머지는 아래에 해주는것이 좋다. 
	--constraint c_book_u unique(no) --unique 
	--constraint c_book_u unique(no, title)
	--unique 은 null 을 포함해 가능하다.  
	--primary key(no),
	--constraint c_book_fk_ foreign key (author_no) references author(no)
	--on delete cascade
	--on delete set null ,
	--primary key은 null 불포함.
	--constraint c_book_check check(state in('대여중','대여가능')) 
	--2개의 단어를 제외한 나머지 단어들은 입력이 불가하다. 
);

alter table book add constraint c_book_pk primary key(no);
alter table book add constraint c_book_check check(state in('대여중','대여가능'));
alter table book add constraint c_book_fk foreign key (author_no) references author(no);