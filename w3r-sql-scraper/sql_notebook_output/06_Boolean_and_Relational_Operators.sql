-- ======================================================================
-- Boolean and Relational Operators
-- Source: https://www.w3resource.com/sql-exercises/sql-boolean-operators.php
-- License: CC BY 4.0 - w3resource.com
-- ======================================================================

-- Q1: Customers with Grade > 100
-- From the following table, write a SQL query to locate the details of customers with grade values above 100. Return customer_id, cust_name, city, grade, and	salesman_id.
-- Sample table: customer
--  customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002
--         3004 | Fabian Johnson | Paris      |   300 |        5006
--         3009 | Geoff Cameron  | Berlin     |   100 |        5003
--         3003 | Jozy Altidor   | Moscow     |   200 |        5007
--         3001 | Brad Guzan     | London     |       |        5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q2: New York Customers with Grade > 100
-- From the following table, write a SQL query to find all the customers in ‘New York’ city who have a grade value above 100. Return  customer_id, cust_name, city, grade, and  salesman_id.
-- Sample table: customer
--  customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002
--         3004 | Fabian Johnson | Paris      |   300 |        5006
--         3009 | Geoff Cameron  | Berlin     |   100 |        5003
--         3003 | Jozy Altidor   | Moscow     |   200 |        5007
--         3001 | Brad Guzan     | London     |       |        5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q3: New York or Grade > 100
-- From the following table, write a SQL query to find customers who are from the city of New York or have a grade of over 100. Return customer_id, cust_name, city, grade, and  salesman_id.
-- Sample table: customer
--  customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002
--         3004 | Fabian Johnson | Paris      |   300 |        5006
--         3009 | Geoff Cameron  | Berlin     |   100 |        5003
--         3003 | Jozy Altidor   | Moscow     |   200 |        5007
--         3001 | Brad Guzan     | London     |       |        5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q4: New York or Not Grade > 100
-- From the following table, write a SQL query to find customers who are either from the city 'New York' or who do not have a grade greater than 100. Return customer_id, cust_name, city, grade, and  salesman_id.
-- Sample table: customer
--  customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002
--         3004 | Fabian Johnson | Paris      |   300 |        5006
--         3009 | Geoff Cameron  | Berlin     |   100 |        5003
--         3003 | Jozy Altidor   | Moscow     |   200 |        5007
--         3001 | Brad Guzan     | London     |       |        5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q5: Not New York and Not Grade > 100
-- From the following table, write a SQL query to identify customers who are not from the city of 'New York' and do not have a grade value greater than 100. Return customer_id, cust_name, city, grade, and salesman_id.
-- Sample table: customer
--  customer_id |   cust_name    |    city    | grade | salesman_id 
-- -------------+----------------+------------+-------+-------------
--         3002 | Nick Rimando   | New York   |   100 |        5001
--         3007 | Brad Davis     | New York   |   200 |        5001
--         3005 | Graham Zusi    | California |   200 |        5002
--         3008 | Julian Green   | London     |   300 |        5002
--         3004 | Fabian Johnson | Paris      |   300 |        5006
--         3009 | Geoff Cameron  | Berlin     |   100 |        5003
--         3003 | Jozy Altidor   | Moscow     |   200 |        5007
--         3001 | Brad Guzan     | London     |       |        5005

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q6: Exclude Specific Orders
-- From the following table, write a SQL query to find details of all orders excluding those with ord_date  equal to '2012-09-10' and salesman_id  higher than 5005  or  purch_amt  greater than 1000.Return  ord_no, purch_amt, ord_date, customer_id and  salesman_id.
-- Sample table: orders
-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003
-- 70007       948.5       2012-09-10  3005         5002
-- 70005       2400.6      2012-07-27  3007         5001
-- 70008       5760        2012-09-10  3002         5001
-- 70010       1983.43     2012-10-10  3004         5006
-- 70003       2480.4      2012-10-10  3009         5003
-- 70012       250.45      2012-06-27  3008         5002
-- 70011       75.29       2012-08-17  3003         5007
-- 70013       3045.6      2012-04-25  3002         5001

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q7: Salespeople with Commission Range 0.10-0.12
-- From the following table, write a SQL query to find the details of those salespeople whose commissions range from 0.10  to0.12. Return  salesman_id, name, city, and commission.
-- Sample table: salesman
--  salesman_id |    name    |   city   | commission 
-- -------------+------------+----------+------------
--         5001 | James Hoog | New York |       0.15
--         5002 | Nail Knite | Paris    |       0.13
--         5005 | Pit Alex   | London   |       0.11
--         5006 | Mc Lyon    | Paris    |       0.14
--         5007 | Paul Adam  | Rome     |       0.13
--         5003 | Lauson Hen | San Jose |       0.12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q8: Orders with Amount < 200 or Exclusions
-- From the following table, write a SQL query to find details of all orders with a purchase amount less than 200 or exclude orders with an order date greater than or equal to '2012-02-10' and a customer ID less than 3009. Return  ord_no, purch_amt, ord_date, customer_id and  salesman_id.
-- Sample table: orders
-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003
-- 70007       948.5       2012-09-10  3005         5002
-- 70005       2400.6      2012-07-27  3007         5001
-- 70008       5760        2012-09-10  3002         5001
-- 70010       1983.43     2012-10-10  3004         5006
-- 70003       2480.4      2012-10-10  3009         5003
-- 70012       250.45      2012-06-27  3008         5002
-- 70011       75.29       2012-08-17  3003         5007
-- 70013       3045.6      2012-04-25  3002         5001

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q9: Conditional Orders Exclusions
-- From the following table, write a SQL query to find all orders that meet the following conditions.  Exclude combinations of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.
-- Sample table: orders
-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003
-- 70007       948.5       2012-09-10  3005         5002
-- 70005       2400.6      2012-07-27  3007         5001
-- 70008       5760        2012-09-10  3002         5001
-- 70010       1983.43     2012-10-10  3004         5006
-- 70003       2480.4      2012-10-10  3009         5003
-- 70012       250.45      2012-06-27  3008         5002
-- 70011       75.29       2012-08-17  3003         5007
-- 70013       3045.6      2012-04-25  3002         5001

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q10: Orders with Achieved Percentage > 50%
-- Write a SQL query that displays order number, purchase amount, and the achieved and unachieved percentage (%) for those orders that exceed 50% of the target value of 6000.
-- Sample table: orders
-- ord_no      purch_amt   ord_date    customer_id  salesman_id
-- ----------  ----------  ----------  -----------  -----------
-- 70001       150.5       2012-10-05  3005         5002
-- 70009       270.65      2012-09-10  3001         5005
-- 70002       65.26       2012-10-05  3002         5001
-- 70004       110.5       2012-08-17  3009         5003
-- 70007       948.5       2012-09-10  3005         5002
-- 70005       2400.6      2012-07-27  3007         5001
-- 70008       5760        2012-09-10  3002         5001
-- 70010       1983.43     2012-10-10  3004         5006
-- 70003       2480.4      2012-10-10  3009         5003
-- 70012       250.45      2012-06-27  3008         5002
-- 70011       75.29       2012-08-17  3003         5007
-- 70013       3045.6      2012-04-25  3002         5001

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q11: Employees with Last Name Dosni or Mardy
-- From the following table, write a SQL query to find the details of all employees whose last name is ‘Dosni’ or  ‘Mardy’. Return emp_idno, emp_fname, emp_lname, and emp_dept.
-- Sample table: emp_details
--  EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
-- --------- --------------- --------------- ----------
--    127323 Michale         Robbin                  57
--    526689 Carlos          Snares                  63
--    843795 Enric           Dosio                   57
--    328717 Jhon            Snares                  63
--    444527 Joseph          Dosni                   47
--    659831 Zanifer         Emily                   47
--    847674 Kuleswar        Sitaraman               57
--    748681 Henrey          Gabriel                 47
--    555935 Alex            Manuel                  57
--    539569 George          Mardy                   27
--    733843 Mario           Saule                   63
--    631548 Alan            Snappy                  27
--    839139 Maria           Foster                  57

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q12: Employees in Department 47 or 63
-- From the following table, write a SQL query to find the employees who work at depart 47 or 63.  Return emp_idno, emp_fname, emp_lname, and emp_dept. Practice Online More to Come ! Query visualizations are generated using Postgres Explain Visualizer (pev) . Do not submit any solution of the above exercises at here, if you want to contribute go to the appropriate exercise page.
-- Sample table: emp_details
--  EMP_IDNO EMP_FNAME       EMP_LNAME         EMP_DEPT
-- --------- --------------- --------------- ----------
--    127323 Michale         Robbin                  57
--    526689 Carlos          Snares                  63
--    843795 Enric           Dosio                   57
--    328717 Jhon            Snares                  63
--    444527 Joseph          Dosni                   47
--    659831 Zanifer         Emily                   47
--    847674 Kuleswar        Sitaraman               57
--    748681 Henrey          Gabriel                 47
--    555935 Alex            Manuel                  57
--    539569 George          Mardy                   27
--    733843 Mario           Saule                   63
--    631548 Alan            Snappy                  27
--    839139 Maria           Foster                  57

-- Write your answer below:



-- ----------------------------------------------------------------------
