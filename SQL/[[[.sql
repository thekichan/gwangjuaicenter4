create database test3DB;
use test3DB;

-- 학생 테이블
create table c_student(
   id int not null auto_increment,   -- 학생 식별 ID
    name varchar(3) not null,   -- 이름
    score int not null,   -- 점수
    attendance int not null,   -- 출석
    major_id int not null,   -- 전공
    primary key(id)
);

insert into c_student(name, score, attendance, major_id) values ('김태완', 90, 95, 1);
insert into c_student(name, score, attendance, major_id) values ('기 찬', 91, 96, 4);
insert into c_student(name, score, attendance, major_id) values ('김효정', 92, 97, 3);
insert into c_student(name, score, attendance, major_id) values ('박 겸', 93, 94, 5);
insert into c_student(name, score, attendance, major_id) values ('박성현', 94, 98, 2);

select * from c_student;

-- 전공 테이블
create table c_major (
    id int not null auto_increment,   -- 전공 식별 ID
    name varchar(10) not null,   -- 전공 이름
    primary key (id)
);

insert into c_major (name) values ('컴퓨터공학과');
insert into c_major (name) values ('전자공학과');
insert into c_major (name) values ('원예생명공학과');
insert into c_major (name) values ('체육교육과');
insert into c_major (name) values ('체육학과');

alter table c_student add constraint fk_major_id foreign key (major_id) references c_major(id);

select * from c_major;

-- 좌석 정보 테이블
create table c_seating(
    student_id int not null,   -- 식별 ID
    name varchar(3) not null,   -- 학생 이름
    seat_number int not null,   -- 좌석 번호
    sum_score int not null,   -- 점수
    primary key (student_id)
);

insert into c_seating values (1, '김태완', 1, 98);
insert into c_seating values (2, '기 찬', 2, 99);
insert into c_seating values (3, '김효정', 3, 97);
insert into c_seating values (4, '박 겸', 4, 100);
insert into c_seating values (5, '박성현', 5, 96);

select * from c_seating;

alter table c_seating add constraint fk_id foreign key (student_id) references c_student(id);

-- 시험점수 테이블
create table c_score(
   id int not null,   -- 학생 식별 ID
    name varchar(3) not null,   -- 이름
    python varchar(10) not null,   -- 파이썬, 점수
    python_score int not null,
    arduino varchar(10) not null,   -- 아두이노, 점수
    arduino_score int not null,
    db varchar(10) not null,   -- 데이터베이스, 점수
    db_score int not null,
    primary key (id)
);

insert into c_score values(1, '김태완', '아두이노', 95, '파이썬', 89, '데이터베이스', 75);
insert into c_score values(2, '기 찬', '아두이노', 96, '파이썬', 88, '데이터베이스', 76);
insert into c_score values(3, '김효정', '아두이노', 97, '파이썬', 87, '데이터베이스', 77);
insert into c_score values(4, '박 겸', '아두이노', 98, '파이썬', 86, '데이터베이스', 78);
insert into c_score values(5, '박성현', '아두이노', 99, '파이썬', 85, '데이터베이스', 79);

select * from c_score;

alter table c_score add constraint fk_id2 foreign key (id) references c_student(id);

