create database hospital;
use hospital;
create table patient(
pid int primary key,
pname varchar(20),
page int,
pdob date
);
insert into patient values
(1,'onkar',24,'2000-06-29'),
(2,'max',35, '1995-02-14'),
(3,'nikam',54,'1986-07-20');
insert into patient values
(4,'harsh',20,'1980-06-29'),
(5,'maximus',55, '1994-02-14'),
(6,'neeta',59,'1975-07-20');
create table appointment(
aid int primary key,
aslot varchar(20),
date date,
reason varchar(50),
pid int,
foreign key(pid) references patient(pid)
);
insert into appointment values
(100,'monday','2024-02-24','fever',1),
(101,'tues','2024-02-22','cough',2),
(102,'wed','2024-02-29','bodyache',3);

create table payment(
pay_id int primary key,
pay_amount float,
pid int,
aid int,
foreign key(pid) references patient(pid),
foreign key(aid) references appointment(aid)
);
insert into payment values
(1001, 2000, 1, 100),
(1002, 5000, 2, 101),
(1003, 3500, 3, 102);
select * from patient;
select * from appointment;
select * from payment;
select patient.pname, patient.page, patient.pdob, payment.pay_id, payment.pay_amount from patient inner join payment on patient.pid = payment.pid;
select patient.pname, patient.page, patient.pdob, appointment.aslot, appointment.date, appointment.reason, payment.pay_id, payment.pay_amount from patient inner join payment on patient.pid = payment.pid 
inner join appointment on appointment.aid = payment.aid;
-- left join / right join 
select patient.pname, patient.page, patient.pdob, payment.pay_id, payment.pay_amount from patient left join payment on patient.pid = payment.pid;
 











