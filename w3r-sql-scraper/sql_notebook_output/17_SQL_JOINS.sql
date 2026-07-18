-- ======================================================================
-- SQL JOINS
-- Source: https://www.w3resource.com/sql-exercises/sql-joins-exercises.php
-- License: CC BY 4.0 - w3resource.com
-- ======================================================================

-- Q1: Sales & City Matching
-- From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
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

-- Q2: Orders in Amount Range
-- From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city. View the table
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
-- .....

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q3: Salesman-Customer Representation
-- From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
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

-- Q4: High Commission Salespeople
-- From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.
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

-- Q5: Different City & High Commission
-- From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.
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

-- Q6: Order Details Report
-- From the following tables write a SQL query to find the details of an order. Return   ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission. Go to the editor View the table
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

-- Q7: Join All Tables Uniquely
-- Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned. View the table
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

-- Q8: Customer & Salesman Sorted by Customer_ID
-- From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.
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

-- Q9: Customers with Grade Less Than 300
-- From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.
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

-- Q10: Customer Order Report by Date
-- Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not. View the table
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

-- Q11: Order & Salesperson Report
-- SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves. View the table
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

-- Q12: Salespersons List (Including Unassigned)
-- Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.
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

-- Q13: Comprehensive Sales & Order Report
-- From the following tables write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount. Condition for selecting list of salesmen : 1. Salesmen who works for one or more customer or, 2. Salesmen who not yet join under any customer, Condition for selecting list of customer : 3. placed one or more orders, or 4. no order placed to their salesman. View the table
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
-- ....

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q14: Salesmen List with Order and Grade Criteria
-- Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier. View the table
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
-- ....

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q15: Customer Order Placement Report
-- For those customers  from the existing list who put one or more orders, or which orders have been  placed by the customer who is not on the list, create a report containing the  customer name, city, order number, order date, and purchase amount View the table
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
-- ....

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q16: Customer Order & Grade Report
-- Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade. View the table
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
-- ....

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q17: Salesman-Customer Full Combination
-- Write a SQL query to combine each row of the salesman table with each row of the customer table.
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

-- Q18: Cartesian Product with City Flag
-- Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.
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

-- Q19: Cartesian Product with Valid City & Grade
-- Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.
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

-- Q20: Cartesian Product with Non Matching Cities
-- Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.
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

-- Q21: Matched Company & Item Join
-- From the following tables write a SQL query to select all rows from both participating tables as long as there is a match between pro_com and com_id.
-- Sample table: item_mast
--  PRO_ID PRO_NAME                       PRO_PRICE    PRO_COM
-- ------- ------------------------- -------------- ----------
--     101 Mother Board                    3200.00         15
--     102 Key Board                        450.00         16
--     103 ZIP drive                        250.00         14
--     104 Speaker                          550.00         16
--     105 Monitor                         5000.00         11
--     106 DVD drive                        900.00         12
--     107 CD drive                         800.00         12
--     108 Printer                         2600.00         13
--     109 Refill cartridge                 350.00         13
--     110 Mouse                            250.00         12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q22: Product & Company Details
-- Write a SQL query to display the item name, price, and company name of all the products.
-- Sample table: item_mast
--  PRO_ID PRO_NAME                       PRO_PRICE    PRO_COM
-- ------- ------------------------- -------------- ----------
--     101 Mother Board                    3200.00         15
--     102 Key Board                        450.00         16
--     103 ZIP drive                        250.00         14
--     104 Speaker                          550.00         16
--     105 Monitor                         5000.00         11
--     106 DVD drive                        900.00         12
--     107 CD drive                         800.00         12
--     108 Printer                         2600.00         13
--     109 Refill cartridge                 350.00         13
--     110 Mouse                            250.00         12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q23: Average Price by Company
-- From the following tables write a SQL query to calculate the average price of items of each company. Return average value and company name.
-- Sample table: item_mast
--  PRO_ID PRO_NAME                       PRO_PRICE    PRO_COM
-- ------- ------------------------- -------------- ----------
--     101 Mother Board                    3200.00         15
--     102 Key Board                        450.00         16
--     103 ZIP drive                        250.00         14
--     104 Speaker                          550.00         16
--     105 Monitor                         5000.00         11
--     106 DVD drive                        900.00         12
--     107 CD drive                         800.00         12
--     108 Printer                         2600.00         13
--     109 Refill cartridge                 350.00         13
--     110 Mouse                            250.00         12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q24: Average Price (>=350) by Company
-- From the following tables write a SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. Return average value and company name.
-- Sample table: item_mast
--  PRO_ID PRO_NAME                       PRO_PRICE    PRO_COM
-- ------- ------------------------- -------------- ----------
--     101 Mother Board                    3200.00         15
--     102 Key Board                        450.00         16
--     103 ZIP drive                        250.00         14
--     104 Speaker                          550.00         16
--     105 Monitor                         5000.00         11
--     106 DVD drive                        900.00         12
--     107 CD drive                         800.00         12
--     108 Printer                         2600.00         13
--     109 Refill cartridge                 350.00         13
--     110 Mouse                            250.00         12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q25: Most Expensive Product by Company
-- From the following tables write a SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name.
-- Sample table: item_mast
--  PRO_ID PRO_NAME                       PRO_PRICE    PRO_COM
-- ------- ------------------------- -------------- ----------
--     101 Mother Board                    3200.00         15
--     102 Key Board                        450.00         16
--     103 ZIP drive                        250.00         14
--     104 Speaker                          550.00         16
--     105 Monitor                         5000.00         11
--     106 DVD drive                        900.00         12
--     107 CD drive                         800.00         12
--     108 Printer                         2600.00         13
--     109 Refill cartridge                 350.00         13
--     110 Mouse                            250.00         12

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q26: Employee & Department Full Report
-- From the following tables write a SQL query to display all the data of employees including their department. View the table
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
-- ...

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q27: Employee Name & Department Sanction
-- From the following tables write a SQL query to display the first and last names of each employee, as well as the department name and sanction amount. View the table
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
-- ....

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q28: High Budget Departments Employee List
-- From the following tables write a SQL query to find the departments with budgets more than Rs. 50000 and display the first name and last name of employees. View the table
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
-- ....

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q29: Departments with More Than Two Employees
-- From the following tables write a SQL query to find the names of departments where more than two employees are employed. Return dpt_name. View the table Keep Learning: SQL Joins , SQL Left Join , SQL Right Join , SQL Equi Join , SQL Non Equi Join , SQL Inner Join , SQL Natural Join , SQL Cross Join , SQL Outer Join , SQL Full Outer Join , SQL Self Join . Practice Online More to Come ! Query visualizations are generated using Postgres Explain Visualizer (pev) . Do not submit any solution of the above exercises at here, if you want to contribute go to the appropriate exercise page.
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
-- ....

-- Write your answer below:



-- ----------------------------------------------------------------------
