--삭제&수정

delete from guestbook;
DROP TABLE guestbook;

drop sequence seq_no;

rollback;
commit;


--테이블 생성
CREATE TABLE guestbook (
    no number(10),
    name varchar2(80),
    password varchar(20),
    content varchar(2000),
    reg_date date,
    primary key(no)
);

--시퀀스 생성
create SEQUENCE seq_no
INCREMENT by 1
start with 1;
    

--데이터 테스트
insert into guestbook
values(seq_no.nextval, '유중혁', '5149', '나는 유중혁이다', to_date(sysdate, 'YYYY-MM-DD HH:MI:SS'));

insert into guestbook
values(seq_no.nextval, '전지현', '1030', '천송이 짱짱맨', to_date(sysdate, 'YYYY-MM-DD HH:MI:SS'));

--데이터 불러오기
select  no,
        name,
        password,
        content,
        to_char(reg_date, 'YYYY-MM-DD HH:MI:SS')
from guestbook;

--데이터 삭제하기
delete guestbook
where no = 1;

--데이터 찾기
select  password
from guestbook
where no = 1
and password = '0000';