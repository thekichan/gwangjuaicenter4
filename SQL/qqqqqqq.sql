-- Data Modeling(데이터 모델링)
-- 표준-SQL(구조화 질의 언어)
CREATE DATABASE testDB;
use testdb;
-- t_customer(고객)
CREATE TABLE t_customer (
    id int not null auto_increment,
    customer_name varchar(10) not null,
	phone varchar(20) not null unique,departmentdepartment
    email varchar(50) not null unique,
    address varchar(100) not null,
    regist_date datetime default now(),
    region_code varchar(3) not null, -- 지역코드는 지역테이블을 참조
    primary key(id),
    -- 외래키 제약조건(조건이름:fk_region_code)
	foreign key (region_code) references t_region(region_code)
);

drop table t_customer;

select * from t_customer;
insert into t_customer(customer_name,phone,email,address,region_code)
values('손흥민','010-1234-5678','song@gmail.com','서울특별시 삼성동 무슨
동 111','02');
insert into t_customer(customer_name,phone,email,address,region_code)
values('박태환','010-5678-9999','park@gmail.com','제주특별자치도 제주시
일도이동','064');
delete from t_customer where id = 1;

values('홍길동','010-1111-1111','hong@gmail.com','서울특별시 강남구 무슨
동 111','002');

create table t_region(
    region_code varchar(3) not null,
    region_name varchar(10) not null,
    primary key(region_code)
);

insert into t_region(region_code,region_name) values('02', '서울특별시');
insert into t_region(region_code,region_name) values('062', '광주광역시');
insert into t_region(region_code,region_name) values('042', '대전광역시');
insert into t_region(region_code,region_name) values('064', '제주특별자치도');

select * from t_region;


drop table t_region;

ALTER TABLE t_customer DROP CONSTRAINT fk_region_code;

select * from information_schema.table_constraints;


create table t_product(
   id int not null auto_increment,
   product_code varchar(12) not null unique,
   product_name varchar(50) not null,
   price int,
   primary key(id)
);

insert into t_product(product_code,product_name,price) values('P00110','노토', 32000);
insert into t_product(product_code,product_name,price) values('P00111','제로휠', 27000);

select * from t_product;

-- 고객, 제품의 행위에 의해서 만들어지는 구매 테이블

CREATE TABLE t_sales (
 id int not null auto_increment,
 customer_id int not null,
 product_code varchar(12) not null,
 qty int not null,
 sales_date datetime default now(),
 primary key(id),
 foreign key(customer_id) references t_customer (id),
 foreign key(product_code) references t_product (product_code)
);


select * from information_schema.table_constraints;

select * from t_sales;

select * from t_customer;

insert into t_sales(customer_id, product_code, qty) values(4,'P00110',2);
insert into t_sales(customer_id, product_code, qty) values(4,'P00111',5);


