-- ======================================================================
-- Aggregate Functions
-- Source: https://www.w3resource.com/sql-exercises/sql-aggregate-functions.php
-- License: CC BY 4.0 - w3resource.com
-- ======================================================================

-- Q1: Calculate Total Purchase Amount of All Orders
-- From the following table, write a SQL query to calculate total purchase amount of all orders. Return total purchase amount. Sample Output:
-- Sample table: orders
-- sum
-- 17541.18

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q2: Calculate Average Purchase Amount of All Orders
-- From the following table, write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount. Sample Output:
-- Sample table: orders
-- avg
-- 1461.7650000000000000

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q3: Count the Number of Unique Salespeople
-- From the following table, write a SQL query that counts the number of unique salespeople. Return number of salespeople. Sample Output:
-- Sample table: orders
-- count
-- 6

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q4: Count the Number of Customers
-- From the following table, write a SQL query to count the number of customers. Return number of customers. Sample Output:
-- Sample table: customer
-- count
-- 8

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q5: Count Customers with at Least One Grade
-- From the following table, write a SQL query to determine the number of customers who received at least one grade for their activity. Sample Output:
-- Sample table: customer
-- count
-- 7

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q6: Find Maximum Purchase Amount
-- From the following table, write a SQL query to find the maximum purchase amount. Sample Output:
-- Sample table: orders
-- max
-- 5760.00

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q7: Find Minimum Purchase Amount
-- From the following table, write a SQL query to find the minimum purchase amount. Sample Output:
-- Sample table: orders
-- min
-- 65.26

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q8: Find Highest Customer Grade in Each City
-- From the following table, write a SQL query to find the highest grade of the customers in each city.  Return city, maximum grade. Sample Output:
-- Sample table: customer
-- city		max
-- London		300
-- Paris		300
-- New York	200
-- California	200
-- Berlin		100
-- Moscow		200

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q9: Find Highest Purchase Amount Ordered by Each Customer
-- From the following table, write a SQL query to find the highest purchase amount ordered by each customer. Return customer ID, maximum purchase amount. Sample Output:
-- Sample table: orders
-- customer_id	max
-- 3007		2400.60
-- 3008		250.45
-- 3002		5760.00
-- 3001		270.65
-- 3009		2480.40
-- 3004		1983.43
-- 3003		75.29
-- 3005		948.50

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q10: Highest Purchase by Customer on Date
-- From the following table, write a SQL query to find the highest purchase amount ordered by each customer on a particular date. Return, order date and highest purchase amount. Sample Output:
-- Sample table: orders
-- customer_id	ord_date	max
-- 3002		2012-10-05	65.26
-- 3003		2012-08-17	75.29
-- 3005		2012-10-05	150.50
-- 3007		2012-07-27	2400.60
-- 3009		2012-08-17	110.50
-- 3001		2012-09-10	270.65
-- 3002		2012-09-10	5760.00
-- 3005		2012-09-10	948.50
-- 3009		2012-10-10	2480.40
-- 3008		2012-06-27	250.45
-- 3004		2012-10-10	1983.43
-- 3002		2012-04-25	3045.60

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q11: Highest Purchase Amount by Salesperson on '2012-08-17'
-- From the following table, write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'. Return salesperson ID, purchase amount Sample Output:
-- Sample table: orders
-- salesman_id	max
-- 5003		110.50
-- 5007		75.29

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q12: Highest Purchase Amount by Customer on Specific Date
-- From the following table, write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. Filter the result by highest order (purchase) amount above 2000.00. Return customer id, order date and maximum purchase amount. Sample Output:
-- Sample table: orders
-- customer_id	ord_date	max
-- 3007		2012-07-27	2400.60
-- 3002		2012-09-10	5760.00
-- 3009		2012-10-10	2480.40
-- 3002		2012-04-25	3045.60

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q13: Max Purchase Amount by Customer and Order Date (2000-6000)
-- From the following table, write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.) by combination of each customer and order date. Return customer id, order date and maximum purchase amount. Sample Output:
-- Sample table: orders
-- customer_id	ord_date	max
-- 3007		2012-07-27	2400.60
-- 3002		2012-09-10	5760.00
-- 3009		2012-10-10	2480.40
-- 3002		2012-04-25	3045.60

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q14: Max Purchase Amount by Customer and Order Date (Filter)
-- From the following table, write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000. Return customer id, order date and maximum purchase amount. Sample Output:
-- Sample table: orders
-- customer_id	ord_date	max
-- 3002		2012-09-10	5760.00

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q15: Max Purchase Amount for Customers (ID Range 3002-3007)
-- From the following table, write a SQL query to determine the maximum order amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Return customer id and maximum purchase amount. Sample Output:
-- Sample table: orders
-- customer_id	max
-- 3002		5760.00
-- 3007		2400.60
-- 3004		1983.43
-- 3003		75.29
-- 3005		948.50

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q16: Max Purchase > 1000 for Customers (ID 3002-3007)
-- From the following table, write a SQL query to find the maximum order (purchase) amount for each customer. The customer ID should be in the range 3002 and 3007(Begin and end values are included.). Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount. Sample Output:
-- Sample table: orders
-- customer_id	max
-- 3002		5760.00
-- 3007		2400.60
-- 3004		1983.43

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q17: Max Purchase by Salesperson (ID 5003-5008)
-- From the following table, write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.). Return salesperson id and maximum purchase amount. Sample Output:
-- Sample table: orders
-- salesman_id	max
-- 5005		270.65
-- 5003		2480.40
-- 5007		75.29
-- 5006		1983.43

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q18: Count Orders on '2012-08-17'
-- From the following table, write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders. Sample Output:
-- Sample table: orders
-- count
-- 2

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q19: Count Salespeople in a City
-- From the following table, write a SQL query to count the number of salespeople in a city. Return number of salespeople. Sample Output:
-- Sample table: salesman
-- count
-- 6

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q20: Count Orders by Order Date and Salesperson
-- From the following table, write a SQL query to count the number of orders based on the combination of each order date and salesperson. Return order date, salesperson id. Sample Output:
-- Sample table: orders
-- ord_date	salesman_id	count
-- 2012-07-27	5001		1
-- 2012-08-17	5007		1
-- 2012-04-25	5001		1
-- 2012-09-10	5002		1
-- 2012-10-05	5002		1
-- 2012-10-10	5003		1
-- 2012-09-10	5005		1
-- 2012-08-17	5003		1
-- 2012-06-27	5002		1
-- 2012-09-10	5001		1
-- 2012-10-05	5001		1
-- 2012-10-10	5006		1

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q21: Calculate Average Product Price
-- From the following table, write a SQL query to calculate the average product price. Return average product price. Sample Output:
-- Sample table: item_mast
-- Average Price
-- 1435.0000000000000000

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q22: Count Products with Price >= 350
-- From the following table, write a SQL query to count the number of products whose price are higher than or equal to 350. Return number of products. Sample Output:
-- Sample table: item_mast
-- Number of Products
-- 8

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q23: Average Price for Unique Companies
-- From the following table, write a SQL query to compute the average price for unique companies. Return average price and company id. Sample Output:
-- Sample table: item_mast
-- Average Price			Company ID
-- 250.0000000000000000		14
-- 650.0000000000000000		12
-- 3200.0000000000000000		15
-- 5000.0000000000000000		11
-- 1475.0000000000000000		13
-- 500.0000000000000000		16

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q24: Sum of Allotment Amount for All Departments
-- From the following table, write a SQL query to compute the sum of the allotment amount of all departments. Return sum of the allotment amount. Sample Output:
-- Sample table: emp_department
-- sum
-- 450000

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q25: Count of Employees in Each Department
-- From the following table, write a SQL query to count the number of employees in each department. Return department code and number of employees. Sample Output: Practice Online More to Come ! Query visualizations are generated using Postgres Explain Visualizer (pev) . Do not submit any solution of the above exercises at here, if you want to contribute go to the appropriate exercise page.
-- Sample table: emp_details
-- emp_dept		count
-- 27			2
-- 57			5
-- 47			3
-- 63			3

-- Write your answer below:



-- ----------------------------------------------------------------------
