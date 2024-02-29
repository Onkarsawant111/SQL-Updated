create database schooluniform;
use schooluniform;
CREATE TABLE Uniform (
    Ucode INT primary key,
    Uname VARCHAR(50),
    Ucolor VARCHAR(50)
);
INSERT INTO UNIFORM (UCode, UName, UColor) VALUES
(1, 'Shirt', 'White'),
(2, 'Pant', 'Grey'),
(3, 'Tie', 'Blue');
CREATE TABLE Cost (
    Ucode INT,
    Size VARCHAR(1),
    Price float
);
-- Inserting data into COST table
INSERT INTO COST (UCode, Size, Price) VALUES
(1, 'L', 580),
(1, 'M', 500),
(2, 'L', 890),
(2, 'M', 810);	
-- a) Using condition in where clause
select * from uniform as u, cost as c where u.ucode = c.ucode;
-- b) Explicit use of JOIN clause
select * from uniform as u inner join cost as c on u.ucode=c.ucode;
-- c) Explicit use of NATURAL JOIN clause
select * from uniform natural join cost ;




