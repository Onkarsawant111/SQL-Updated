use college;
-- show tables;
create table car(
car_id int primary key,
car_name varchar(10) not null,
car_color varchar(10) unique
);
insert into car
(car_id, car_name, car_color)
values
(1, 'alto', 'black'),
(2, 'scorpio', 'white');
-- how to add new column?
alter table car add column car_type varchar(10) default 'cruiser' after car_name;
-- how to delete the column from table?
alter table car drop column car_color;
-- how to rename the col?
alter table car rename column car_id to car_no;
-- how to rename the table?
alter table car rename car_info;
-- how to modify datatype?
alter table car_info modify column car_name varchar(20);
-- how to modify constraint?
alter table car_info modify column car_name varchar(10) null;
-- how to use truncate?
-- truncate table car_info;




