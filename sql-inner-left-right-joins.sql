create database amazon;
use amazon;
create table user(
u_id int primary key,
u_name varchar(20),
u_age int,
u_location varchar(20));
insert into user values (1,'onkar',24,'thane'),(2,'raj',21,'thane'),(3,'max',41,'mumbai'),(4,'meena',34,'kalyan'),(5,'harry',28,'kalyan');
create table product(
p_id int primary key,
p_name varchar(20),
p_price float,
u_id int,
foreign key(u_id) references user(u_id));
insert into product values (11,'ac',25000,1),(12,'TV',35000,1),(13,'mixer',5000,4),(14,'WM',18000,3),(15,'mobile',8000,5),(16,'ac',80000,5);
create table cart(
c_id int primary key,
u_id int,
p_id int,
foreign key(u_id) references user(u_id),
foreign key(p_id) references product(p_id));
insert into cart values (21,1,11); insert into cart values (22,3,14),(23,1,12),(24,3,14),(25,4,13),(26,5,15),(27,5,16);
create table payment(
pay_id int primary key,
u_id int,
p_id int,
foreign key(u_id) references user(u_id),
foreign key(p_id) references product(p_id));
insert into payment values (31,1,11),(32,1,12),(33,3,14),(34,5,15);
create table orders(
o_id int primary key,
u_id int,
p_id int,
pay_id int,
foreign key(u_id) references user(u_id),
foreign key(p_id) references product(p_id),
foreign key(pay_id) references payment(pay_id));
insert into orders values (41,1,11,31),(42,1,12,32),(43,3,14,33),(44,5,15,34);
select * from user;
select * from product;
select * from cart;
select * from payment;
select * from orders;
-- 1) inner join to connect user,product,cart
select u_name,u_location,p_name,p_price,c_id from user inner join cart on user.u_id = cart.u_id inner join product on cart.p_id = product.p_id;
-- 2) left join / right join 
select * from user left join cart on user.u_id = cart.u_id;
















