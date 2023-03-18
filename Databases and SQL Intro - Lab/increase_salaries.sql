UPDATE Employees
SET Salary = Salary * 1.12
WHERE DepartmentID IN (1, 2, 4, 11);

SELECT Salary
FROM Employees;

-- Write a SQL query to increase salaries of all employees
-- that are in the Engineering, Tool Design, Marketing or
-- Information Services department by 12%. Then select
-- Salaries column from the Employees table.