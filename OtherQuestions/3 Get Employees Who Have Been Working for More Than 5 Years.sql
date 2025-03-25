-- **Q3: Get Employees Who Have Been Working for More Than 5 Years**

-- **Difficulty:** Easy

-- **Description:** Write a query to retrieve the **employee_id, first_name, last_name, and hire_date** of employees who have been working for **more than 5 years** (assuming the current date is 2025-03-25).
SELECT employee_id, first_name, last_name, hire_date
FROM Employees
WHERE TIMESTAMPDIFF(YEAR, hire_date, '2025-03-25') > 5;