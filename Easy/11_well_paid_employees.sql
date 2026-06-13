-- Q: Well Paid Employees (FAANG) - Easy
-- Link: https://datalemur.com/questions/sql-well-paid-employees
-- PATTERN: Self JOIN

-- NOTES:
-- Same table joined to itself — one copy as employee, one as manager
-- manager_id links to employee_id of the manager
-- Filter where employee salary > manager salary

-- SOLUTION:
SELECT e.employee_id, e.name AS employee_name
FROM employee e
JOIN employee m ON e.manager_id = m.employee_id
WHERE e.salary > m.salary;