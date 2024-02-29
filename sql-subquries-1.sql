 create database amazon;
 use amazon;
CREATE TABLE CUSTOMER (
    CUST_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    OCCUPATION VARCHAR(50),
    AGE INT
);
INSERT INTO CUSTOMER (CUST_ID, NAME, OCCUPATION, AGE) VALUES
(101, 'PETER', 'ENGINEER', 32),
(102, 'JOSEPH', 'DEVELOPER', 30),
(103, 'JOHN', 'LEADER', 28),
(104, 'STEPHEN', 'SCIENTIST', 45),
(105, 'SUZI', 'CARPENTER', 26),
(106, 'BOB', 'ACTOR', 25),
(107, NULL, NULL, NULL); 
CREATE TABLE ORDERS (
    ORDER_ID INT PRIMARY KEY,
    CUST_ID INT,
    PROD_NAME VARCHAR(50),
    ORDER_DATE DATE
);
INSERT INTO ORDERS (ORDER_ID, CUST_ID, PROD_NAME, ORDER_DATE) VALUES
(1, 101, 'LAPTOP', '2022-01-10'),
(2, 103, 'DESKTOP', '2022-02-11'),
(3, 106, 'IPHONE', '2022-03-13'),
(4, 104, 'MOBILE', '2022-03-05'),
(5, 102, 'TV', '2022-03-20');
select * from customer;
select * from orders;
-- 1.     Find the details of the customers whose details is not in the customer table.
SELECT * FROM ORDERS WHERE CUST_ID NOT IN (SELECT CUST_ID FROM CUSTOMER);
-- 2.     The customer details who have not placed an order.
select * from customer where cust_id not in(select cust_id from orders);
-- 3.     Find the name of the customers who has purchased laptop.
select name from customer where cust_id in (select cust_id from orders where prod_name= "laptop" ); 
-- 4.     Find the details of customers who purchased iphone.
select * from customer where cust_id = (select cust_id from orders where prod_name = "iphone"); 
-- 5.     Find the details of the customers whose details is not in the orders table.
select * from customer where cust_id not in (select cust_id from orders); 
-- 6.     How many customers from customers table has made an order.
select count(cust_id) as c_numbers from customer where cust_id in (select cust_id from orders);












