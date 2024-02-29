use college;
create table student_info(
id int primary key,
name varchar(10) not null,
email varchar(10) unique
);
alter table student_info modify column email varchar(30) unique;
-- using insert command
insert into student_info
(id , name, email)
values
(1, 'onkar', 'onkar@gmail.com'),
(2, 'raj', 'raj@gmail.com'),
(3, 'megha', 'megha@gmail.com');
-- using update command
update student_info 
set email = 'raj@yahoo.com'
where email = 'raj@gmail.com'; 
-- delete command 
delete from student_info where email = 'raj@yahoo.com'; 
insert into student_info
(id , name, email)
values
(2, 'raj', 'raj@gmail.com');
select * from student_info;
delete from student_info where email = 'megha@gmail.com';
select * from student_info;


