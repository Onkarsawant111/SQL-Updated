create database student;
use student;

create table studentinfo(
id int primary key,
name varchar(30) not null,
dob date not null,
marks float not null,
city varchar(30) not null
);
alter table studentinfo rename column id to fullname;
alter table studentinfo modify column city char(15);
alter table studentinfo rename student_info;
alter table student_info modify column city char(15) null;
alter table student_info drop column city;
select * from student_info;




