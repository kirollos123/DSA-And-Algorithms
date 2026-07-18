-- ======================================================================
-- SQL Challenges-1
-- Source: https://www.w3resource.com/sql-exercises/challenges-1/index.php
-- License: CC BY 4.0 - w3resource.com
-- ======================================================================

-- Q1: Combine two tables
-- From the following tables, write a SQL query to find the information on each salesperson of ABC Company. Return name, city, country and state of each salesperson. Input: table: salespersons table: address Output:
-- first_name|last_name|city       |state     |
-- ----------|---------|-----------|----------|
-- Jones     |Collins  |Los Angeles|California|
-- Bryant    |Davis    |Denver     |Colorado  |
-- Green     |Wright   |           |          |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q2: Third Highest Sale
-- From the following table, write a SQL query to find the third highest sale. Return sale amount. Input: table: salemast Output:
-- SecondHighestSale|
-- -----------------|
--              4500|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q3: NthHighest Sale amount
-- From the following table, write a SQL query to find the N th highest sale. Return sale amount. Input: table: salemast Output:
-- getNthHighestSaleAmt(3)|
-- -----------------------|
--                    3500|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q4: Consecutive Numbers
-- From the following table, write a SQL query to find the marks, which appear at least thrice one after another without interruption. Return the number. Input: table: logs Output:
-- ConsecutiveNums|
-- ---------------|
--              83|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q5: Duplicate Emails
-- From the following table, write a SQL query to find all the duplicate emails (no upper case letters) of the employees. Return email id. Input: table: employees Output:
-- email_id     |
-- -------------|
-- [email protected]|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q6: Customers without any Order
-- From the following tables, write a SQL query to find those customers who never ordered anything. Return customer name. Input: table: customers table: orders Output:
-- Customers|
-- ---------|
-- Evan     |
-- Toby     |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q7: Remove Duplicate Emails
-- From the following table, write a SQL query to remove all the duplicate emails of employees keeping the unique email with the lowest employee id. Return employee id and unique emails. Input: table: employees Output:
-- employee_id|employee_name|email_id     |
-- -----------|-------------|-------------|
--         101|Liam Alton   |[email protected]|
--         102|Josh Day     |[email protected]|
--         103|Sean Mann    |[email protected]|
--         104|Evan Blake   |[email protected]|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q8: Rising Sulfur Dioxide
-- From the following table, write a SQL query to find all dates' city ID with higher pollution compared to its previous dates (yesterday). Return city ID, date and pollution. Input: table: so2_pollution Output:
-- City ID|
-- -------|
--     702|
--     703|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q9: Highest Sale Amount
-- A salesperson is a person whose job is to sell products or services. From the following tables, write a SQL query to find the top 10 salesperson that have made highest sale. Return their names and total sale amount. Input: Table:  sales Table:  salesman Output:
-- salesman_name        |total_sale|
-- ---------------------|----------|
-- Dan McKee            |  70530.00|
-- Cleveland Klein      |  61020.00|
-- Elliot Clapham       |  60519.00|
-- Evan Blake           |  53108.00|
-- Ollie Wheatley       |  52640.00|
-- Frederick Kelsey     |  52270.00|
-- Sean Mann            |  52053.00|
-- Callum Bing          |  48645.00|
-- Kian Wordsworth      |  45250.00|
-- Bradley Wright       |  41961.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q10: Find active customers
-- An active customer is simply someone who has bought company's product once before and has returned to make another purchase within 10 days. From the following table, write a SQL query to identify the active customers. Show the list of customer IDs of active customers. Input: Table: orders Output:
-- customer_id|
-- -----------|
--        2103|
--        2110|
--        2111|
--        2112|
--        2129|
--        2130|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q11: Convert negative numbers to positive and vice verse
-- From the following table, write a SQL query to convert negative numbers to positive and vice verse. Return the number. Input: Table name: tablefortest Output:
-- srno|pos_neg_val|converted_signed_value|
-- ----|-----------|----------------------|
--    1|         56|                   -56|
--    2|        -74|                    74|
--    3|         15|                   -15|
--    4|        -51|                    51|
--    5|         -9|                     9|
--    6|         32|                   -32|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q12: Century of a given date
-- From the following table, write a SQL query to find the century of a given date. Return the century. Input: Table name: tablefortest Output:
-- id|date_of_birth|Century|
-- --|-------------|-------|
--  1|   1907-08-15|   20  |
--  2|   1883-06-27|   19  |
--  3|   1900-01-01|   19  |
--  4|   1901-01-01|   20  |
--  5|   2005-09-01|   21  |
--  6|   1775-11-23|   18  |
--  7|   1800-01-01|   18  |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q13: Find the even or odd values
-- From the following table, write a SQL query to find the even or odd values. Return "Even" for even number and "Odd" for odd number. Input: Table name: tablefortest Output:
-- srno|col_val|Even_Odd|
-- ----|-------|--------|
--    1|     56|Even    |
--    2|     74|Even    |
--    3|     15|Odd     |
--    4|     51|Odd     |
--    5|      9|Odd     |
--    6|     32|Even    |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q14: Unique values
-- From the following table, write a SQL query to find the unique marks. Return the unique marks. Input: Table name: student_test Output:
-- Unique Marks|
-- ------------|
--           56|
--           74|
--           15|
--           89|
--           93|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q15: Find Student Supporter
-- From the following table, write a SQL query to find those students who have referred by the teacher whose id not equal to 602.  Return the student names. Input: Table Name: students Output:
-- student_name|
-- ------------|
-- Alex        |
-- Jhon        |
-- Peter       |
-- Minto       |
-- Crage       |
-- Chang       |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q16: Salesperson that makes maximum number of sales amount
-- From the following table, write a SQL query to find the order_id(s) that was executed by the maximum number of salespersons. If there are, more than one order_id(s)  executed by the maximum number of salespersons  find all the order_id(s). Return order_id. Input: Table Name: salemast Output:
--  order_id|
-- --------|
--     1002|
--     1004|	

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q17: Big Cities
-- A city is big if it has an area bigger than 50K square km or a population of more than 15 million. From the following table, write a SQL query to find big cities name, population and area. Input: Table : cities_test Output:
-- city_name   |country |city_population|city_area|
-- ------------|--------|---------------|---------|
-- Delhi       |India   |       16753235|     1484|
-- Shanghai    |China   |       24870895|     6341|
-- Beijing     |China   |       21893095|    16411|
-- Chongqing   |China   |       32054159|    82403|
-- Istanbul    |Turkey  |       15519267|     5196|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q18: Orders items 5 or more times
-- From the following table, write a SQL query to find those items, which have ordered  5 or more times.  Return item name and number of orders. Input: Table: orders Output:
-- item_desc|Number of orders|
-- ---------|----------------|
-- cake     |               6|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q19: Overall execution Rate
-- From the following tables, write a SQL query to find the overall rate of execution of orders, which is the number of orders execution divided by the number of orders quote. Return rate_of_execution rounded to 2 decimals places. Input: Table:  orders_issued Table: orders_executed Output:
-- rate_of_execution|
-- -----------------|
--              0.67|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q20: Audience in the match
-- From the following table write an SQL query to display the records with four or more rows with consecutive match_no's, and the crowd attended more than or equal to 50000 for each match. Return match_no, match_date and audience.  Order the result by visit_date, descending. Input: table : match_crowd Output:
-- match_no|match_date|audience|
-- --------|----------|--------|
--        6|2016-06-16|   63670|
--        7|2016-06-17|   73648|
--        8|2016-06-18|   52409|
--        9|2016-06-19|   67291|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q21: Consecutive Availability of a doctor in a clinic
-- From the following table write a SQL query to know the availability of the doctor for consecutive 2 or more days. Return visiting days. Input: Table:  dr_clinic Output:
-- visiting_date|
-- -------------|
--    2016-06-11|
--    2016-06-12|
--    2016-06-17|
--    2016-06-18|
--    2016-06-19|
--    2016-06-20|
--    2016-06-21|   

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q22: Sales Person
-- From the following tables find those customers who did not make any order to the supplier 'DCX LTD'. Return customers name. Input: Table:  customers Table :  supplier Table:  orders Output:
-- customer_name|
-- -------------|
-- Liam         |
-- Josh         |
-- Sean         |
-- ----------------------

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q23: Highest Single marks
-- Table students contain marks of mathematics for several students in a class. It may same marks for more than one student. From the following table write a SQL table to find the highest unique marks a student achieved.  Return the marks. Table:  students Output:
-- marks|
-- -----|
--    89|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q24: Internal changes of beds
-- In a hostel, each room contains two beds. After every 6 months a student have to change their bed with his or her room-mate. From the following tables write a SQL query to find the new beds of the students in the hostel.  Return original_bed_id, student_name, bed_id and student_new. Table : bed_info Output:
-- original_bed_id|student_name|bed_id|student_new|
-- ---------------|------------|------|-----------|
--             102|Jhon        |   101|Jhon       |
--             101|Alex        |   102|Alex       |
--             104|Danny       |   103|Danny      |
--             103|Pain        |   104|Pain       |
--             106|Rex         |   105|Rex        |
--             105|Paul        |   106|Paul       |
--             108|Josh        |   107|Josh       |
--             107|Philip      |   108|Philip     |
--             110|Green       |   109|Green      |
--             109|Evan        |   110|Evan       |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q25: Find the first login date for each customer
-- From the following table, write a SQL query to find the first login date for each customer. Return customer id, login date. Input: Table:  bank_trans Output:
-- customer_id|first_login|
-- -----------|-----------|
--        3001| 2019-09-25|
--        3002| 2018-07-24|
--        3003| 2018-09-13|
--        3004| 2017-09-05|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q26: Find those salespersons whose commission is less than ten thousand
-- From the following table, write a SQL query to find those salespersons whose commission is less than ten thousand. Return salesperson name, commission. Input: Table:  salemast Table : commision Output:
-- salesman_name|commision_amt|
-- -------------|-------------|
-- Mark         |         4000|
-- Liam         |         8000|
-- Evan         |         6000|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q27: Distributor who purchased all types of item from the company
-- From the following table write a SQL query to find those distributors who purchased all types of item from the company. Return distributors ids. Input: Table:  items Table : orders Output:
-- distributor_id|
-- --------------|
--            503|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q28: Actors and Directors who jointly worked three or more movies
-- From the following tables write a SQL query to find those directors and actors who worked together at least three or more movies. Return the director and actor name. Input: Table:  actor_test Table : director_test Table:  movie_test Table : mov_direction_test Output:
-- dir_name     |act_name   |
-- -------------|-----------|
-- James Cameron|Bill Paxton|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q29: Students achieved 100 percent in every subject in every year
-- From the following tables write a SQL query to find those students who achieved 100 percent in various subjects in every year. Return examination ID, subject name, examination year, number of students. Input: Table:  exam_test Table : subject_test Output:
-- exam_id|subject_name|exam_year|no_of_student|
-- -------|------------|---------|-------------|
--      71|Chemistry   |     2017|         2500|
--      71|Mathematics |     2017|         5146|
--      71|Mathematics |     2018|         3545|
--      71|Physics     |     2018|         5945|
--      71|Physics     |     2019|         2500|
--      72|Mathematics |     2018|         3500|
--      72|Physics     |     2017|         3651|
--      73|Mathematics |     2018|         2647|
--      73|Mathematics |     2019|         2647|
--      73|Physics     |     2018|         4501|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q30: Students achieved 100 percent marks in every subject for all the year
-- From the following tables write a SQL query to find those students who achieved 100 percent marks in every subject for all the year. Return subject ID, subject name, students for all year. Input: Table:  exam_test Table : subject_test Output:
-- subject_id|subject_name|Students for all year|
-- ----------|------------|---------------------|
--        201|Mathematics |                17485|
--        202|Physics     |                16597|
--        203|Chemistry   |                 2500|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q31: Students achieved 100 percent for the first year of each examination of every subject
-- From the following tables write a SQL query that will generate a report which shows the total number of students achieved 100 percent for the first year of each examination of every subject. Input: Table:  exam_test Table : subject_test Output:
-- exam_id|subject_name|first_year|no_of_student|
-- -------|------------|----------|-------------|
--      71|Mathematics |      2017|         5146|
--      71|Physics     |      2017|         2701|
--      71|Chemistry   |      2017|         2500|
--      72|Physics     |      2017|         3651|
--      73|Mathematics |      2017|         1000|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q32: Average experience for each scheme
-- From the following tables write a SQL query to display those managers who have average experience for each scheme. Input: Table:  managing_body Table : scheme Output:
-- scheme_code|Average year of experience|
-- -----------|--------------------------|
--        1001|                      3.50|
--        1002|                      4.50|
--        1003|                      5.00|
--        1004|                      3.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q33: Schemes executed by minimum number of employees
-- From the following tables write a SQL query to find those schemes which executed by minimum number of employees. Return scheme code. Input: Table:  managing_body Table : scheme Output:
-- scheme_code|
-- -----------|
--        1003|
--        1004|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q34: Most experienced manager to execute the schemes
-- From the following tables write a SQL query to find those experienced manager who execute the schemes. Return scheme code and  scheme manager ID. Input: Table:  managing_body Table : scheme Output:
-- scheme_code|scheme_manager_id|
-- -----------|-----------------|
--        1001|               51|
--        1002|               51|
--        1003|               51|
--        1004|               52|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q35: Sales Analysis
-- From the following tables write an SQL query to find the best seller by total sales price. Return  distributor ID , If there is a tie, report them all. Input: Table:  item Table : sales_info Output:
-- distributor_id|
-- --------------|
--           5002|
--           5003|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q36: Retailers buying history
-- From the following table write a SQL query to find those retailers who have bought 'key board' but not 'mouse'. Return retailer ID. Input: Table:  item Table : sales_info Output:
-- retailer_id|
-- -----------|
--        1001|
--        1004|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q37: Sale history of items for a particular period
-- From the following table write a SQL query to display those items that were only sold in the 2nd quarter of a year, i.e. April 1st to June end for the year 2020. Return item code and item description. Input: Table:  item Table : sales_info Output:
-- item_code|item_desc   |
-- ---------|------------|
--       101|mother board|
--       102|RAM         |
--       103|key board   |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q38: Highest purchase for each customer
-- From the following table write a SQL query to find the highest purchase with its corresponding item for each customer. In case of a same quantity purchase find the item code which is smallest. The output must be sorted by increasing of customer_id. Return customer ID,lowest item code and purchase quantity. Input: Table:  purchase Data: Output:
-- customer_id|lowest item code|purch_qty|
-- -----------|----------------|---------|
--         101|             503|       50|
--         102|             505|       50|
--         103|             501|       35|
--         104|             504|       40|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q39: Find all the writers who rated at least one of their own topic
-- From the following table write a SQL query to find all the writers who rated at least one of their own topic. Sorted the result in ascending order by writer id. Return writer ID. Input: Table:  topics Data: Output:
-- Author rated on own topic|
-- -------------------------|
--                       502|
--                       507|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q40: Writers who rated more than one topics on the same date
-- From the following table write a SQL query to find all the writers who rated more than one topics on the same date, sorted in ascending order by their id. Return writr ID. Input: Table:  topics Data: Output:
-- Topic rated by the writer|
-- -------------------------|
--                       502|
--                       507|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q41: Sale quantity of each quarter for a product
-- From the following table write a SQL query to make a report such that there is a product id column and a sale quantity column for each quarter. 
Return product ID and sale quantity of each quarter. Input: Table:  sale Data: Output:
-- product_id	qtr1_sale	qtr2_sale	qtr3_sale	qtr4_sale
-- 1	15000	10000	NULL	NULL
-- 2	20000	12000	NULL	NULL
-- 3	20000	15000	23000	22000
-- 4	NULL	25000	NULL	18000

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q42: Order status report for each month for each company
-- From the following table write a SQL query to find for each month and company, the number of orders issued and their total quantity, the number of orders booked and their total order quantity. Return month, name of the company, number of orders issued, number of booked orders, total order quantity and total booked orders quantity. Input: Table: order_stat Data: Output:
-- month year	com_name	no_of_orders	booked_orders	total_order_qty	no_of_booked_qty
-- 2020-08		MMS INC		2		1		900				500
-- 2020-08		BCT LTD		1		0		300				0
-- 2020-08		XYZ COR		2		2		800				800
-- 2020-10		MMS INC		1		0		500				0
-- 2020-11		BWD PRO LTD	1		0		250				0
-- 2020-10		BCT LTD		1		1		600				600
-- 2020-12		MMS INC		1		1		300				300
-- 2020-11		BCT LTD		1		1		400				400

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q43: Order status report for each month for each company to find booked and cancelled order number and quantity
-- From the following table write a SQL query to find for each month and company, the number of orders issued and their total quantity, the number of orders cancelled and their total quantity. Return month, name of the company, number of orders booked, number of booked quantity, number of cancelled order, and number of cancelled quantity. Input: Table: order_stat Data: Table: order_return Structure:
-- order_id|com_name   |ord_qty|ord_stat |stat_date |
-- --------|-----------|-------|---------|----------|
--      151|MMS INC    |    500|Booked   |2020-08-15|
--      152|BCT LTD    |    300|Cancelled|2020-08-15|
--      153|MMS INC    |    400|Cancelled|2020-08-26|
--      154|XYZ COR    |    500|Booked   |2020-08-15|
--      155|MMS INC    |    500|Cancelled|2020-10-11|
--      156|BWD PRO LTD|    250|Cancelled|2020-11-15|
--      157|BCT LTD    |    600|Booked   |2020-10-07|
--      158|MMS INC    |    300|Booked   |2020-12-11|
--      159|XYZ COR    |    300|Booked   |2020-08-26|
--      160|BCT LTD    |    400|Booked   |2020-11-15|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q44: Average Selling Price
-- From the following tables write a SQL query to find the average selling price for each item. Return item code and average_selling_price.
average_selling_price should be rounded to 2 decimal places. Input: Table: item_price Data: Table: sale Structure: Data: Output:
-- item_code|average_selling_price|
-- ---------|---------------------|
--       101|                11.18|
--       102|                17.00|
--       103|                11.54|
--       104|                25.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q45: All People Report to the Given Manager
-- From the following table write a SQL query to find all employees that directly or indirectly report to the head of the company. Return employee_id, name, and manager_id. Input: Table: emp_test_table Data: Output:
-- employee_id|Name       |manager_id|
-- -----------|-----------|----------|
--         101|Neena      |       100|
--         102|Lex        |       100|
--         103|Alexander  |       102|
--         104|Bruce      |       103|
--         105|David      |       103|
--         106|Valli      |       103|
--         107|Diana      |       103|
--         108|Nancy      |       101|
--         109|Daniel     |       108|
--         110|John       |       108|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q46: Students and Examinations
-- From the following tables write a SQL query to find the number of times each patient call the specialist doctor since their treating period. Order the result table by patient_id and specialist_call. Input: Table: patient Data: Table: speciality Data: Table: treatment Data: Output:
-- patient_id|patient_name   |specialist |Specialist Attended|
-- ----------|---------------|-----------|-------------------|
--       1001|Gilbart Kane   |cardiology |                  1|
--       1001|Gilbart Kane   |hematology |                  2|
--       1001|Gilbart Kane   |medicine   |                  1|
--       1001|Gilbart Kane   |neurology  |                  0|
--       1002|Thomas Richi   |cardiology |                  1|
--       1002|Thomas Richi   |hematology |                  0|
--       1002|Thomas Richi   |medicine   |                  0|
--       1002|Thomas Richi   |neurology  |                  2|
--       1003|Ricardo Grance |cardiology |                  2|
--       1003|Ricardo Grance |hematology |                  0|
--       1003|Ricardo Grance |medicine   |                  1|
--       1003|Ricardo Grance |neurology  |                  0|
--       1004|Vanio Tishuma  |cardiology |                  0|
--       1004|Vanio Tishuma  |hematology |                  1|
--       1004|Vanio Tishuma  |medicine   |                  1|
--       1004|Vanio Tishuma  |neurology  |                  0|
--       1005|Charls Brown   |cardiology |                  1|
--       1005|Charls Brown   |hematology |                  1|
--       1005|Charls Brown   |medicine   |                  0|
--       1005|Charls Brown   |neurology  |                  2|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q47: Find the Team Size
-- From the following table write a SQL query to find the number of employees are working in the department of each employees. Return employee Id and number of employees are working in their department. Input: Table: emp_test_table Data: Output:
-- employee_id|employees_in_department|
-- -----------|-----------------------|
--         100|                      3|
--         101|                      3|
--         102|                      3|
--         103|                      5|
--         104|                      5|
--         105|                      5|
--         106|                      5|
--         107|                      5|
--         108|                      3|
--         109|                      3|
--         110|                      3|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q48: Show running quantiry for each unit type of item
-- From the following table write a SQL query to find the total sale quantity of items of each unit type at each day. Return unit type, date and total sale quantity at each day. Order the result table by gender and day. Input: Table: sale Data: Output:
-- unit_type|sale_date |running unit|
-- ---------|----------|------------|
-- L        |2018-01-27|          70|
-- L        |2018-02-05|         110|
-- L        |2018-03-15|         160|
-- L        |2018-04-10|         185|
-- L        |2018-07-07|         235|
-- P        |2018-02-11|          30|
-- P        |2018-04-27|          60|
-- P        |2018-05-15|          80|
-- P        |2018-06-25|         120|
-- P        |2018-07-12|         150|
-- P        |2018-09-17|         190|
-- P        |2018-12-24|         240|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q49: List the items sold out within a specific period
-- From the following tables write a SQL query to get the description of items with 50 or more quantities sold out within January and February of 2020.
Return item description and sale quantity. Input: Table: item Data: Table: sales_info Data: Output:
-- item_desc   |sale_quantity|
-- ------------|-------------|
-- key board   |           70|
-- mother board|           55|
-- mouse       |           75|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q50: Find the order id and the item name for all companies who are not registered with the distributor
-- From the following table write a SQL query to find the order id and the item name for all companies who are not registered with the distributor. Return the result table in any order. Input: Table: company_info Data: Table: orders Data: Output:
-- order_id|item_name|
-- --------|---------|
--      105|mouse    |
--      106|speaker  |
--      110|scanner  |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q51: Salesman who makes Largest Number of transactions
-- From the following table write a SQL query to find the ID for the salesman who makes largest number of transactions. Input: Table: sales Data: Output:
-- salesman_id|make_transaction|
-- -----------+----------------+
--          57|               5|
--          53|               5|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q52: compare the purchasing status of  the average purchase quantity of products of a category to the average pruchase quantity of the distributor
-- From the following tables write a query in SQL to compare the purchasing status of  the average purchase quantity of products of a category to the average pruchase quantity of the distributor. Return purchase month, category_id and purchase status. Input: Table: product Data: Table: purchase Data: Output:
-- purchase_month|category_id|purchase_status|
-- --------------+-----------+---------------+
-- 2019-12       |        150|increase       |
-- 2020-01       |        150|increase       |
-- 2020-02       |        150|increase       |
-- 2019-12       |        160|decrease       |
-- 2020-01       |        160|decrease       |
-- 2020-02       |        160|decrease       |
-- 2020-11       |        160|remain same    |
-- 2020-12       |        160|remain same    |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q53: Highest difference in total sale of all quarters on a product of many companies
-- From the following table write a SQL query to identifies the highest difference in total sale of all quarters on a product of many companies. Return highest and lowest total sale and highest difference. Input: Table: sales Data: Output:
-- max_sale|min_sale|sale_difference|
-- --------+--------+---------------+
--     1640|     780|            860|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q54: Find smart salesperson executed at least 5 transactions
-- A 'Smart' salesperson executed at least 5 transactions with a total sale amount is more than Rs.30000. From the following tables write a SQL query to find the smart salespersons. Return salesperson ID, name, number of transactions executed and the total amount of executed transactions. Input: Table: sales Data: Table: salesman Data: Output:
-- salesman_id|name                 |order_count|total_sale_amount|
-- -----------+---------------------+-----------+-----------------+
--          57|Cleveland Klein      |          5|         61020.00|
--          53|Dan McKee            |          5|         70530.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q55: Find the minimum order amount sold by each salesperson
-- From the following tables write a SQL query to find the minimum order amount sold by each salesperson. Return the salesperson ID, name and the minimum order amount they sold. Input: Table: sales Data: Table: salesman Data: Output:
-- salesman_id|salesman_name        |minimum_sale_amount|
-- -----------+---------------------+-------------------+
--          11|Jonathan Goodwin     |            4500.00|
--          12|Adam Hughes          |           14900.00|
--          13|Mark Davenport       |            7000.00|
--          15|Ethan Birkenhead     |            9778.00|
--          17|Josh Day             |           15600.00|
--          18|Sean Mann            |            5200.00|
--          19|Evan Blake           |            5985.00|
--          20|Rhys Emsworth        |           19800.00|
--          21|Kian Wordsworth      |            7660.00|
--          22|Frederick Kelsey     |            7100.00|
--          23|Noah Turner          |           12200.00|
--          24|Callum Bing          |           14400.00|
--          25|Harri Wilberforce    |            7128.00|
--          27|Richard York         |            8125.00|
--          28|Tobias Stratford     |            8900.00|
--          29|Will Kirby           |            9500.00|
--          30|Bradley Wright       |            5300.00|
--          31|Eli Willoughby       |           18720.00|
--          33|Kieran Freeman       |            6000.00|
--          34|Toby Scott           |            5480.00|
--          35|Elliot Clapham       |            8129.00|
--          36|Lewis Moss           |           19998.00|
--          37|Joshua Atterton      |           11000.00|
--          38|Jonathan Reynolds    |            7800.00|
--          41|Dan Astley           |            5514.00|
--          42|Finlay Dalton        |            5900.00|
--          43|Toby Rodney          |            8400.00|
--          44|Ollie Wheatley       |            7890.00|
--          46|Jason Wilson         |            8200.00|
--          47|Christopher Wentworth|            5990.00|
--          48|Cameron Ansley       |           18880.00|
--          49|Henry Porter         |            7548.00|
--          50|Ezra Winterbourne    |            5566.00|
--          51|Rufus Fleming        |           10000.00|
--          52|Wallace Dempsey      |           11265.00|
--          53|Dan McKee            |            9825.00|
--          54|Marion Caldwell      |            6420.00|
--          55|Morris Phillips      |           13000.00|
--          56|Chester Chandler     |            5125.00|
--          57|Cleveland Klein      |            6645.00|
--          58|Hubert Bean          |            9800.00|
--          59|Cleveland Hart       |            6500.00|
--          60|Marion Gregory       |            8995.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q56: Department wise number of male and female employees
-- From the following table write a SQL query to find the number of male and female employees in each department and along with their total salaries. Return department ID, number of female employees, their total salaries, number of male employees and their total salaries. Input: Table: employees Data: Output:
-- department|female_employees|female_total_salary|male_employees|male_total_salary|
-- ----------+----------------+-------------------+--------------+-----------------+
--         90|               1|              17000|             1|            24000|
--         80|                |                   |             2|            21800|
--         60|               2|               9000|             2|            15000|
--        100|               2|              15900|             4|            35700|
--         30|               2|               5700|             2|            14100|
--         50|               2|               5300|             1|             3300|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q57: Find the employees in department Administration who solved the cases for all quarters are more than 1200
-- From the following table write a query in SQL find the employees in department Sales who solved the cases for all quarters are more than 1200. Return the name of the employees and total cases solved for all quarter. Result should be in ascending order or employee name. Input: Table: employees Data: Output:
-- emp_name   |total_cases|
-- -----------+-----------+
-- Alexander  |       1270|
-- Sigal      |       1230|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q58: Find most expensive and cheapest room from the hotels
-- From the following table write a SQL query to find the cheapest and most expensive room in the hotels of a city. Return hotel ID, most expensive and cheapest room's ID. Input: Table: hotels Data: Output:
-- hotel|most_expensive_room_no|cheapest_room_no|
-- -----+----------------------+----------------+
--   201|                  5010|            3008|
--   203|                  5065|            4051|
--   204|                  4635|            3830|
--   205|                  6015|            5525|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q59: Managers who can ordered more than four employees
-- From the following table write a SQL query to find the managers who can ordered more than 4 reporting employees. Return employee ID and name of the employees. Input: Table: employees Data: Output:
-- employee_id|emp_name   |
-- -----------+-----------+
--         108|Nancy      |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q60: Find customers booked orders more than 3 times
-- From the following table find customers who orders more than three times. Return customer ID and number of orders the customer booked. Input: Table: orders Data: Output:
-- customer_id|customer_appears|
-- -----------+----------------+
--        2120|               4|
--        2130|               6|
--        2141|               4|
--        2112|               4|
--        2100|               4|
--        2133|               4|
--        2117|               4|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q61: Find departments with 6 or more employees
-- From the following table write a SQL query to find the departments where 6 or more employees are working. Return employees ID,name,designation and department ID. Input: Table: employees Data: Output:
-- employee_id|emp_name   |Designation|department_id|
-- -----------+-----------+-----------+-------------+
--         108|Nancy      |FI_MGR     |          100|
--         109|Daniel     |FI_ACCOUNT |          100|
--         110|John       |FI_ACCOUNT |          100|
--         111|Ismael     |FI_ACCOUNT |          100|
--         112|Jose Manuel|FI_ACCOUNT |          100|
--         113|Luis       |FI_ACCOUNT |          100|
--         133|Jason      |ST_CLERK   |           50|
--         134|Michael    |ST_CLERK   |           50|
--         135|Ki         |ST_CLERK   |           50|
--         136|Hazel      |ST_CLERK   |           50|
--         137|Renske     |ST_CLERK   |           50|
--         138|Stephen    |ST_CLERK   |           50|
--         139|John       |ST_CLERK   |           50|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q62: Find highest sale amount that appears distinctly
-- From the following table write a query in SQL to find the highest sale among salespersons that appears only once. Return salesperson ID and sale amount. Input: Table: sales Data: Output:
-- sale_amount|
-- -----------+
--    12000.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q63: Find the highest daily total order for an item
-- From the following table write a query in SQL to find the highest daily total order for an item between 2019-07-01 to 2019-12-31. Return item description, order date and the total order quantity. Input: Table: orders Data: Output:
-- item_desc|order_date|daysOrder|
-- ---------+----------+---------+
-- juice    |2019-10-18|      374|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q64: Count the number of patients treated by each doctor
-- From the following tables write a query in SQL to count the number of patients treated by each doctor. Return doctors name and number of patients they treated. Input: Table: doctors Data: Table: visits Data: Output:
-- doctor_name   |Patients Treated|
-- --------------+----------------+
-- Dr. John Linga|               1|
-- Dr. Peter Hall|               1|
-- Dr. Ke Gee    |               4|
-- Dr. Pat Fay   |               2|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q65: Find total order amount for each customer in September 2008
-- From the following table write a SQL query to calculate the total order amount issued by each customer in September 2008. Return customer ID and total order amount. Input: Table: orders Data: Table: customer Data: Output:
-- cust_code|Total Order|
-- ---------+-----------+
-- C00007   |       6000|
-- C00004   |       4200|
-- C00003   |       2500|
-- C00008   |       1500|
-- C00022   |        500|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q66: Display own salary and average salary for their department
-- From the following table write a SQL query to show the salary of each employee along with the average salary for their department. Return job ID,name,salary and average salary. Input: Table: employees Data: Output:
-- job_id    |emp_name   |salary  |Average_Salary|
-- ----------+-----------+--------+--------------+
-- AD_PRES   |Steven     |24000.00|  24000.000000|
-- AD_VP     |Neena      |17000.00|  17000.000000|
-- AD_VP     |Lex        |17000.00|  17000.000000|
-- IT_PROG   |Alexander  | 9000.00|   5760.000000|
-- IT_PROG   |Bruce      | 6000.00|   5760.000000|
-- IT_PROG   |David      | 4800.00|   5760.000000|
-- IT_PROG   |Valli      | 4800.00|   5760.000000|
-- IT_PROG   |Diana      | 4200.00|   5760.000000|
-- FI_MGR    |Nancy      |12000.00|  12000.000000|
-- FI_ACCOUNT|Daniel     | 9000.00|   7920.000000|
-- FI_ACCOUNT|John       | 8200.00|   7920.000000|
-- FI_ACCOUNT|Ismael     | 7700.00|   7920.000000|
-- FI_ACCOUNT|Jose Manuel| 7800.00|   7920.000000|
-- FI_ACCOUNT|Luis       | 6900.00|   7920.000000|
-- PU_MAN    |Den        |11000.00|  11000.000000|
-- PU_CLERK  |Alexander  | 3100.00|   2933.333333|
-- PU_CLERK  |Shelli     | 2900.00|   2933.333333|
-- PU_CLERK  |Sigal      | 2800.00|   2933.333333|
-- ST_CLERK  |Jason      | 3300.00|   2900.000000|
-- ST_CLERK  |Michael    | 2900.00|   2900.000000|
-- ST_CLERK  |Ki         | 2400.00|   2900.000000|
-- ST_CLERK  |Hazel      | 2200.00|   2900.000000|
-- ST_CLERK  |Renske     | 3600.00|   2900.000000|
-- ST_CLERK  |Stephen    | 3200.00|   2900.000000|
-- ST_CLERK  |John       | 2700.00|   2900.000000|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q67: Find the highest salaried employees for each designation
-- From the following table write a query in SQL to find the highest salaried employees for each designation. Return job_id, name and the salary earned. Input: Table: employees Data: Output:
-- job_id    |Name       |salary  |
-- ----------+-----------+--------+
-- AD_PRES   |Steven     |24000.00|
-- AD_VP     |Neena      |17000.00|
-- AD_VP     |Lex        |17000.00|
-- IT_PROG   |Alexander  | 9000.00|
-- FI_MGR    |Nancy      |12000.00|
-- FI_ACCOUNT|Daniel     | 9000.00|
-- PU_MAN    |Den        |11000.00|
-- PU_CLERK  |Alexander  | 3100.00|
-- ST_CLERK  |Renske     | 3600.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q68: Employees who are earning more salary than their managers
-- From the following table write a query in SQL to find the employees who are earning more salary than their managers. Return employee ID, name, and salary, manager ID, manager name and the salary of the manager. Input: Table: employees Data: Output:
-- employee_id|emp_name   |salary  |manager_id|Manager Name|Manager Salary|
-- -----------+-----------+--------+----------+------------+--------------+
--         104|Bruce      |11000.00|       103|Alexander   |       9000.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q69: Find cost percent for each order of total order amount
-- From the following tables write a query in SQL to find the cost percent for each order of total order amount of a customer. Return customer ID, customer name, order details, order amount and cost percent. Input: Table: orders Data: Table: customer Data: Output:
-- cust_code|cust_name  |ord_description|ord_amount|Percentage of Cost|
-- ---------+-----------+---------------+----------+------------------+
-- C00022   |Avinash    |key board      |      4000|            0.5000|
-- C00022   |Avinash    |mouse          |       500|            0.0625|
-- C00022   |Avinash    |mother board   |       500|            0.0625|
-- C00022   |Avinash    |hard disk      |       500|            0.0625|
-- C00022   |Avinash    |RAM            |      2500|            0.3125|
-- C00010   |Charles    |mouse          |       500|            1.0000|
-- C00008   |Karolina   |mouse          |      4000|            0.5333|
-- C00008   |Karolina   |key board      |      1500|            0.2000|
-- C00008   |Karolina   |hard disk      |      2000|            0.2667|
-- C00007   |Ramanathan |hard disk      |      4500|            0.4091|
-- C00007   |Ramanathan |RAM            |      4000|            0.3636|
-- C00007   |Ramanathan |mother board   |      2500|            0.2273|
-- C00009   |Ramesh     |mother board   |      3500|            0.7447|
-- C00009   |Ramesh     |mouse          |      1200|            0.2553|
-- C00025   |Ravindran  |RAM            |      2500|            0.5000|
-- C00025   |Ravindran  |mother board   |      2500|            0.5000|
-- C00012   |Steven     |mother board   |      2000|            0.6897|
-- C00012   |Steven     |hard disk      |       900|            0.3103|
-- C00015   |Stuart     |RAM            |      1000|            0.1429|
-- C00015   |Stuart     |key board      |      3500|            0.5000|
-- C00015   |Stuart     |mouse          |      2500|            0.3571|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q70: Resolve highest complaint and nearest manager id is 114
-- From the following table write a query in SQL to find those employees who resolve the highest complaint in all quarter and works under the supervision of that manager, holding id 114. Returns employee name and the number of complaint resolved. Input: Table: employees Data: Output:
-- emp_name   |Case Resolved|
-- -----------+-------------+
-- Ismael     |         1160|
-- Luis       |         1160|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q71: Number of customers, orders, and total order amount for each city
-- From the following tables write a query in SQL to find the number of customer issued orders, number of orders they have issued along with the total order amount for each cities. Those cities should come in result set where four or more orders have been issued. Returns city name, number of customers, number of orders and total order amount. Input: Table: customer Data: Table: orders Data: Output:
-- cust_city |Number of orders|Number of Customer|Total order Amountt|
-- ----------+----------------+------------------+-------------------+
-- Bangalore |               5|                 4|               8300|
-- Chennai   |               5|                 3|              17000|
-- London    |               4|                 4|               6500|
-- Mumbai    |               7|                 3|              12700|
-- Torento   |               4|                 3|               9500|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q72: Find highest three unique salaries of each department
-- From the following table write a query in SQL to find the highest three unique salaries for each department. Return department ID and three highest unique salaries. Arranged the result set in ascending order on department ID and descending order on salaries. Input: Table: employees Data: Output:
-- department_id|salary  |
-- -------------+--------+
--            30|11000.00|
--            30| 3100.00|
--            30| 2900.00|
--            50| 3600.00|
--            50| 3300.00|
--            50| 3200.00|
--            60| 9000.00|
--            60| 6000.00|
--            60| 4800.00|
--            90|24000.00|
--            90|17000.00|
--           100|12000.00|
--           100| 9000.00|
--           100| 8200.00|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q73: Find salespersons who not yet made any sale transaction
-- From the following tables write a query in SQL to find the salespersons who not yet made any sale transaction. Return salesperson ID and salesperson's name. Arranged the resultset in ascending order on salesman ID. Input: Table: sales Data: Table: salesman Data: Output:
-- SALESMAN_ID|SALESMAN_NAME        |
-- -----------+---------------------+
--          14|Jamie Shelley        |
--          16|Liam Alton           |
--          26|Gabriel Gibson       |
--          32|Patrick Riley        |
--          39|David Hill           |
--          40|Aidan Yeardley       |
--          45|Sean Spalding        |

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q74: Employees resolve highest number of cases in all quarters
-- From the following table write a SQL query find the employee who resolve the highest number of cases in all quarters. Return employee name and total number of cases resolved. Input: Table: employees Data: Output:
-- emp_name   |Target achieved in all Qtrs.|
-- -----------+----------------------------+
-- Valli      |                        1300|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q75: Department where highest salaried employee(s) are working
-- From the following tables write a query in SQL to find the department where the highest salaried employee(s) are working. Return department name and highest salary to this department. Input: Table: departments Data: Table: employees Data: Output:
-- department_name|emp_salary|
-- ---------------+----------+
-- Production     |     24000|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q76: Find the 2nd highest salary among employees
-- From the following table write a query in SQL to find the 2nd highest salary of employees. Input: Table: employees Data: Output:
-- employee_id|emp_name   |hire_date |job_id    |salary  |manager_id|department_id|
-- -----------+-----------+----------+----------+--------+----------+-------------+
--         100|Steven     |1987-06-17|AD_PRES   |24000.00|         0|           90|

-- Write your answer below:



-- ----------------------------------------------------------------------

-- Q77: Return the shipping and delivery rates
-- From the following table write a query in SQL to return the shipped and delivered rate for each order. Return order_id, shipped percentage, and delivered percentage. Input: Table: orderdetails Data: Output: SQL Code Editor: More to Come ! Do not submit any solution of the above exercises at here, if you want to contribute go to the appropriate exercise page. Test your skills with w3resource's quiz
-- order_id|shipped_perc|delivered_perc|
-- --------+------------+--------------+
--    10001|     1.00000|       0.00000|
--    10002|     0.00000|       1.00000|
--    10003|     0.00000|       1.00000|
--    10004|     1.00000|       0.00000|

-- Write your answer below:



-- ----------------------------------------------------------------------
