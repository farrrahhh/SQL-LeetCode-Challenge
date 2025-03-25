-- **📌 SQL Questions (30 minutes)**

-- **Q1: Retrieve Employees with the Highest Salary in Each Department**

-- **Difficulty:** Medium

-- **Description:** Write a query to retrieve the **employee_id, first_name, last_name, department_name, and salary** sof the highest-paid employee in each department.

-- **Expected Output:**
-- employee_id	first_name	last_name	department_name
-- 103	Charlie	Davis	Engineering
-- 105	Emily	Wilson	Sales
-- 104	David	Brown	Marketing



WITH ordered_salary AS (SELECT employee_id, CONCAT(first_name , ' ' , last_name) AS full_name, department_id, salary, 
RANK() OVER(PARTITION BY department_id ORDER BY salary) AS ranks
FROM Employees)
SELECT employee_id, full_name, department_id, salary
FROM ordered_salary
WHERE ranks = 1;

