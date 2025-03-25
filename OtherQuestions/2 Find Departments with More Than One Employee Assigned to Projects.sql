-- **Find Departments with More Than One Employee Assigned to Projects**

-- **Difficulty:** Hard

-- **Description:** Write a query to **return department_name and count of employees** in departments that have more than **one** employee assigned to projects.

SELECT department_name, COUNT(*) employee_count
FROM Departments d
NATURAL JOIN Employees e
NATURAL JOIN Employee_projects
GROUP BY department_id
HAVING employee_count >= 2;