 create database amazon;
 use amazon;
 CREATE TABLE Student_info (
    sid INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    dept VARCHAR(50),
    percentage DECIMAL(5, 2)
);
INSERT INTO Student_info (name, dept, percentage) VALUES
('Harry', 'IT', 95.26),
('Mac', 'CS', 98.45),
('Rox', 'Mechanical', 75.69),
('Shree', 'IT', 85.65),
('Ramesh', 'CS', 89.45);
select * from student_info;
-- 1) Find the records  of the students scoring the highest percentage.
select * from student_info where percentage = (select max(percentage) from student_info);
-- 2) Find the information of the students who are having the second highest percentage in the table.  
SELECT * FROM Student_info WHERE percentage = (SELECT MAX(percentage) FROM Student_info WHERE percentage < (SELECT MAX(percentage) FROM Student_info));













