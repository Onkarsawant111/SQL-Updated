-- i) To display the day like “Monday”, “Tuesday”,from the date when India got independence.	
SELECT  dayname('1947-08-15');
-- ii) To display the specified number of characters from a particular position of the given string.
select length(substr('my name is onkar',2 , 5 ));
select substr('my name is onkar',2 , 5 );
-- iii) To display the name of the month in which you were born.
select monthname('2000-06-29');
-- iv) To display your name in capital letters.
select upper('onkar');
