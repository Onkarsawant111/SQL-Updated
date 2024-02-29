use schooluniform;
CREATE TABLE ITEMS_ORDERED (
    customerid INT,
    order_date DATE,
    item VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2)
);
INSERT INTO ITEMS_ORDERED (customerid, order_date, item, quantity, price) VALUES
(10330, '1999-06-30', 'Pogo stick', 1, 28.00),
(10101, '1999-06-30', 'Raft', 1, 58.00),
(10298, '1999-07-01', 'Skateboard', 1, 33.00),
(10101, '1999-07-01', 'Life Vest', 4, 125.00),
(10299, '1999-07-06', 'Parachute', 1, 1250.00),
(10339, '1999-07-27', 'Umbrella', 1, 4.50),
(10449, '1999-08-13', 'Unicycle', 1, 180.79),
(10439, '1999-08-14', 'Ski Poles', 2, 25.50),
(10101, '1999-08-18', 'Rain Coat', 1, 18.30);
CREATE TABLE CUSTOMERS (
    customerid INT,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    city VARCHAR(50),
    state VARCHAR(50)
);
INSERT INTO CUSTOMERS (customerid, firstname, lastname, city, state) VALUES
(10101, 'John', 'Gray', 'Lynden', 'Washington'),
(10298, 'Leroy', 'Brown', 'Pinetop', 'Arizona'),
(10299, 'Elroy', 'Keller', 'Snoqualmie', 'Washington'),
(10315, 'Lisa', 'Jones', 'Oshkosh', 'Wisconsin'),
(10325, 'Ginger', 'Schultz', 'Pocatello', 'Idaho'),
(10329, 'Kelly', 'Mendoza', 'Kailua', 'Hawaii'),
(10330, 'Shawn', 'Dalton', 'Cannon Beach', 'Oregon'),
(10338, 'Michael', 'Howell', 'Tillamook', 'Oregon'),
(10339, 'Anthony', 'Sanchez', 'Winslow', 'Arizona'),
(10408, 'Elroy', 'Cleaver', 'Globe', 'Arizona');
select * from items_ordered;
select * from customers;
-- 1.Write a query using a join to determine which items were ordered by each of the customers in the customers table. Select the customerid, firstname, lastname, order_date, item, and price for everything each customer purchased in the items_ordered table.
select concat(firstname, ' ', lastname) as fullname, c.customerid, order_date, item, price from customers as c inner join items_ordered as i on i.customerid = c.customerid; 
-- 2.Repeat exercise #1, however display the results sorted by state in descending order.
select concat(firstname, ' ', lastname) as fullname, c.customerid, order_date, item, price, state from customers as c inner join items_ordered as i on i.customerid = c.customerid order by state desc; 












