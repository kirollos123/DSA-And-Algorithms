-- ======================================================================
-- Wildcard and Special operators
-- Source: https://www.w3resource.com/sql-exercises/sql-wildcard-special-operators.php
-- License: CC BY 4.0 - w3resource.com
-- ======================================================================

-- Q1: Salespeople from Paris or Rome
-- From the following table, write a SQL query to find the details of those salespeople who come from the 'Paris' City or 'Rome' City. Return  salesman_id, name, city, commission. Sample Output:
-- Sample table: salesman
-- salesman_id	name		city	commission
-- 5002		Nail Knite	Paris	0.13
-- 5006		Mc Lyon		Paris	0.14
-- 5007		Paul Adam	Rome	0.13

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q2: Salespeople in Paris or Rome
-- From the following table, write a SQL query to find the details of the salespeople who come from either  'Paris' or 'Rome'. Return  salesman_id, name, city, commission. Sample Output:
-- Sample table: salesman
-- salesman_id	name		city	commission
-- 5002		Nail Knite	Paris	0.13
-- 5006		Mc Lyon		Paris	0.14
-- 5007		Paul Adam	Rome	0.13

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q3: Salespeople Not in Paris or Rome
-- From the following table, write a SQL query to find the details of those salespeople who live in cities other than Paris and Rome. Return salesman_id, name, city, commission. Sample Output:
-- Sample table: salesman
-- salesman_id	name		city		commission
-- 5001		James Hoog	New York	0.15
-- 5005		Pit Alex	London		0.11
-- 5003		Lauson Hen	San Jose	0.12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q4: Customers with Specific IDs
-- From the following table, write a SQL query to retrieve the details of all customers whose ID belongs to any of the values 3007, 3008 or 3009. Return customer_id, cust_name, city, grade, and  salesman_id. Sample Output:
-- Sample table: customer
-- customer_id	cust_name	 city		grade	salesman_id
-- 3007		Brad Davis	 New York	200		5001
-- 3008		Julian Green   London		300		5002
-- 3009		Geoff Cameron	Berlin		100		5003

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q5: Salespeople with Commission 0.12-0.14
-- From the following table, write a SQL query to find salespeople who receive commissions between 0.12 and 0.14 (begin and end values are included). Return  salesman_id, name, city, and  commission. Sample Output:
-- Sample table: salesman
-- salesman_id	name		city	commission
-- 5002		Nail Knite	Paris	0.13
-- 5006		Mc Lyon		Paris	0.14
-- 5007		Paul Adam	Rome	0.13
-- 5003		Lauson Hen	San Jose0.12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q6: Orders Between 500-4000 Excluding Specific Amounts
-- From the following table, write a SQL query to select orders between 500 and 4000 (begin and end values are included). Exclude orders amount 948.50 and 1983.43. Return ord_no, purch_amt, ord_date, customer_id, and salesman_id. Sample Output:
-- Sample table: orders
-- ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 70005	2400.60		2012-07-27	3007		5001
-- 70003	2480.40		2012-10-10	3009		5003
-- 70013	3045.60		2012-04-25	3002		5001

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q7: Salespeople with Names N-O Range
-- From the following table, write a SQL query to retrieve the details of the salespeople whose names begin with any letter between 'A' and 'L' (not inclusive). Return salesman_id, name, city, commission. Sample Output:
-- Sample table: salesman
-- salesman_id	name		city		commission
-- 5001		James Hoog	New York	0.15

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q8: Salespeople with Names Not A-M Range
-- From the following table, write a SQL query to find the details of all salespeople except those whose names begin with any letter between 'A' and 'M'. Return salesman_id, name, city, commission. Sample Output:
-- Sample table: salesman
-- salesman_id	name		city		commission
-- 5002		Nail Knite	Paris		0.13
-- 5005		Pit Alex	London		0.11
-- 5006		Mc Lyon		Paris		0.14
-- 5007		Paul Adam	Rome		0.13
-- 5003		Lauson Hen	San Jose	0.12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q9: Customers with Names Starting with B
-- From the following table, write a SQL query to retrieve the details of the customers whose names begins with the letter 'B'. Return  customer_id, cust_name, city, grade, salesman_id.. Sample Output:
-- Sample table: customer
-- customer_id	cust_name	city		grade	salesman_id
-- 3007		Brad Davis	New York	200	5001
-- 3001		Brad Guzan	London			5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q10: Customers with Names Ending with N
-- From the following table, write a SQL query to find the details of the customers whose names end  with the letter 'n'.  Return  customer_id, cust_name, city, grade, salesman_id. Sample Output:
-- Sample table: customer
-- customer_id	cust_name		city	grade	salesman_id
-- 3008		Julian Green		London	300	5002
-- 3004		Fabian Johnson		Paris	300	5006
-- 3009		Geoff Cameron		Berlin	100	5003
-- 3001		Brad Guzan		London		5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q11: Salespeople Name Starts 'N' with Fourth 'L'
-- From the following table, write a SQL query to find the details of those salespeople whose names begin with ‘N’ and the fourth character is 'l'. Rests may be any character. Return salesman_id, name,  city, commission. Sample Output:
-- Sample table: salesman
-- salesman_id	name		city	commission
-- 5002		Nail Knite	Paris	0.13

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q12: Rows with Underscore Character
-- From the following table, write a SQL query to find those rows where col1 contains the escape character underscore ( _ ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001/DJ-402\44_/100/2015
-- A001_\DJ-402\44_/100/2015
-- A001_DJ-402-2014-2015
-- A002_DJ-401-2014-2015
-- A001/DJ_401
-- A001/DJ_402\44
-- A001/DJ_402\44\2015
-- A001/DJ_402\45\2015%100
-- A001/DJ_402%45\2015/300

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q13: Rows Without Underscore Character
-- From the following table, write a SQL query to identify those rows where col1 does not contain the escape character underscore ( _ ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001/DJ-402%45\2015/200
-- A001/DJ-402\44

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q14: Rows with Forward Slash Character
-- From the following table, write a SQL query to find rows in which col1 contains the forward slash character ( / ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001/DJ-402\44_/100/2015
-- A001_\DJ-402\44_/100/2015
-- A001/DJ_401
-- A001/DJ_402\44
-- A001/DJ_402\44\2015
-- A001/DJ-402%45\2015/200
-- A001/DJ_402\45\2015%100
-- A001/DJ_402%45\2015/300
-- A001/DJ-402\44

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q15: Rows Without Forward Slash Character
-- From the following table, write a SQL query to identify those rows where col1 does not contain the forward slash character ( / ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001_DJ-402-2014-2015
-- A002_DJ-401-2014-2015

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q16: Rows with '_/' String
-- From the following table, write a SQL query to find those rows where col1 contains the string ( _/ ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001/DJ-402\44_/100/2015
-- A001_\DJ-402\44_/100/2015

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q17: Rows Without '_/' String
-- From the following table, write a SQL query to find those rows where col1 does not contain the string ( _/ ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001_DJ-402-2014-2015
-- A002_DJ-401-2014-2015
-- A001/DJ_401
-- A001/DJ_402\44
-- A001/DJ_402\44\2015
-- A001/DJ-402%45\2015/200
-- A001/DJ_402\45\2015%100
-- A001/DJ_402%45\2015/300
-- A001/DJ-402\44

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q18: Rows with Percent Character
-- From the following table, write a SQL query to find those rows where col1 contains the character percent ( % ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001/DJ-402%45\2015/200
-- A001/DJ_402\45\2015%100
-- A001/DJ_402%45\2015/300

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q19: Rows Without Percent Character
-- From the following table, write a SQL query to find those rows where col1 does not contain the character percent ( % ). Return col1. Sample Output:
-- Sample table: testtable
-- col1
-- A001/DJ-402\44_/100/2015
-- A001_\DJ-402\44_/100/2015
-- A001_DJ-402-2014-2015
-- A002_DJ-401-2014-2015
-- A001/DJ_401
-- A001/DJ_402\44
-- A001/DJ_402\44\2015
-- A001/DJ-402\44

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q20: Customers Without Grade
-- From the following table, write a SQL query to find all those customers who does not have any grade.  Return customer_id, cust_name,	city, grade, salesman_id. Sample Output:
-- Sample table: customer
-- customer_id	cust_name	city	grade	salesman_id
-- 3001		Brad Guzan	London		5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q21: Customers With Grade
-- From the following table, write a SQL query to locate all customers with a grade value. Return customer_id, cust_name,city, grade, salesman_id. Sample Output:
-- Sample table: customer
-- customer_id	cust_name	city		grade	salesman_id
-- 3002		Nick Rimando	New York	100	5001
-- 3007		Brad Davis	New York	200	5001
-- 3005		Graham Zusi	California	200	5002
-- 3008		Julian Green	London		300	5002
-- 3004		Fabian Johnson	Paris		300	5006
-- 3009		Geoff Cameron	Berlin		100	5003
-- 3003		Jozy Altidor	Moscow		200	5007

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q22: Employees with Last Name Starting 'D'
-- From the following table, write a SQL query to locate the employees whose last name begins with the letter 'D'. Return  emp_idno, emp_fname, emp_lname and emp_dept. Go to the editor Sample Output: Practice Online More to Come ! Query visualizations are generated using Postgres Explain Visualizer (pev) . Do not submit any solution of the above exercises at here, if you want to contribute go to the appropriate exercise page.
-- Sample table: emp_details
-- emp_idno	emp_fname	emp_lname	emp_dept
-- 843795		Enric		Dosio		57
-- 444527		Joseph		Dosni		47

-- Write your answer below:



-- ----------------------------------------------------------------------
