-- ======================================================================
-- Query on Multiple Tables
-- Source: https://www.w3resource.com/sql-exercises/sql-exercises-quering-on-multiple-table.php
-- License: CC BY 4.0 - w3resource.com
-- ======================================================================

-- Q1: Sales & City Matching
-- From the following tables, write a SQL query to find the salespeople and customers who live in the same city. Return customer name, salesperson name and salesperson city. Sample Output:
-- Sample table: customer
-- cust_name	name		city
-- Nick Rimando	James Hoog	New York
-- Brad Davis	James Hoog	New York
-- Julian Green	Pit Alex	London
-- Fabian Johnson	Mc Lyon		Paris
-- Fabian Johnson	Nail Knite	Paris
-- Brad Guzan	Pit Alex	London

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q2: Customer-Salesperson Association
-- From the following tables, write a SQL query to locate all the customers and the salesperson who works for them. Return customer name, and salesperson name. Sample Output:
-- Sample table: salesman
-- cust_name	name
-- Nick Rimando	James Hoog
-- Brad Davis	James Hoog
-- Graham Zusi	Nail Knite
-- Julian Green	Nail Knite
-- Fabian Johnson	Mc Lyon
-- Geoff Cameron	Lauson Hen
-- Jozy Altidor	Paul Adam
-- Brad Guzan	Pit Alex

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q3: Different City Orders
-- From the following tables, write a SQL query to find those salespeople who generated orders for their customers but are not located in the same city. Return  ord_no, cust_name, customer_id (orders table), salesman_id (orders table). View the table Sample Output:
-- Sample table: orders
-- ord_no	cust_name	customer_id	salesman_id
-- 70004	Geoff Cameron	3009		5003
-- 70003	Geoff Cameron	3009		5003
-- 70011	Jozy Altidor	3003		5007
-- 70001	Graham Zusi	3005		5002
-- 70007	Graham Zusi	3005		5002
-- 70012	Julian Green	3008		5002

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q4: Customer Orders Listing
-- From the following tables, write a SQL query to locate the orders made by customers. Return   order number, customer name. View the table Sample Output:
-- Sample table: customer
-- ord_no	cust_name
-- 70009	Brad Guzan
-- 70002	Nick Rimando
-- 70004	Geoff Cameron
-- 70005	Brad Davis
-- 70008	Nick Rimando
-- 70010	Fabian Johnson
-- 70003	Geoff Cameron
-- 70011	Jozy Altidor
-- 70013	Nick Rimando
-- 70001	Graham Zusi
-- 70007	Graham Zusi
-- 70012	Julian Green

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q5: Customer Grade & Salesperson City
-- From the following tables, write a SQL query to find those customers where each customer has a grade and is served by a salesperson who belongs to a city. Return  cust_name  as "Customer", grade as  "Grade". View the table Sample Output:
-- Sample table: customer
-- Customer      |Grade|Order No|
-- --------------|-----|--------|
-- Nick Rimando  |  100|   70002|
-- Geoff Cameron |  100|   70004|
-- Brad Davis    |  200|   70005|
-- Nick Rimando  |  100|   70008|
-- Fabian Johnson|  300|   70010|
-- Geoff Cameron |  100|   70003|
-- Jozy Altidor  |  200|   70011|
-- Nick Rimando  |  100|   70013|
-- Graham Zusi   |  200|   70001|
-- Graham Zusi   |  200|   70007|
-- Julian Green  |  300|   70012|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q6: Commission Range Filtering
-- From the following table, write a SQL query to find those customers who are served by a salesperson and the salesperson earns commission in the range of 12% to 14% (Begin and end values are included.).  Return cust_name AS "Customer", city AS  "City". Sample Output:
-- Sample table: customer
-- Customer	City		Salesman	commission
-- Graham Zusi	California	Nail Knite	0.13
-- Julian Green	London		Nail Knite	0.13
-- Fabian Johnson	Paris		Mc Lyon		0.14
-- Geoff Cameron	Berlin		Lauson Hen	0.12
-- Jozy Altidor	Moscow		Paul Adam	0.13

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q7: Calculated Commission for High Grade
-- From the following tables, write a SQL query to find all orders executed by the salesperson and  ordered by the customer whose grade is greater than or equal to 200. Compute purch_amt*commission as “Commission”. Return customer name, commission as “Commission%” and Commission. View the table Sample Output:
-- Sample table: orders
-- ord_no	cust_name	Commission%	Commission
-- 70005	Brad Davis	0.15		360.0900
-- 70010	Fabian Johnson	0.14		277.6802
-- 70011	Jozy Altidor	0.13		9.7877
-- 70001	Graham Zusi	0.13		19.5650
-- 70007	Graham Zusi	0.13		123.3050
-- 70012	Julian Green	0.13		32.5585

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q8: Orders on Specific Date
-- From the following table, write a SQL query to find those customers who placed orders on October 5, 2012. Return   customer_id, cust_name, city, grade, salesman_id,  ord_no, purch_amt, ord_date, customer_id and  salesman_id. View the table Sample Output: Practice Online More to Come ! Query visualizations are generated using Postgres Explain Visualizer (pev) . Do not submit any solution of the above exercises at here, if you want to contribute go to the appropriate exercise page.
-- Sample table: orders
-- customer_id	cust_name	city		grade	salesman_id	ord_no	purch_amt	ord_date	customer_id	salesman_id
-- 3002		Nick Rimando	New York	100	5001		70002	65.26		2012-10-05	3002		5001
-- 3005		Graham Zusi	California	200	5002		70001	150.50		2012-10-05	3005		5002

-- Write your answer below:



-- ----------------------------------------------------------------------
