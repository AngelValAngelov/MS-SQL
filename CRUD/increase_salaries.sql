UPDATE Employees
SET Salary *= 1.12
WHERE DepartmentID IN (SELECT DepartmentID FROM Departments
WHERE Departments.Name IN ('Engineering', 'Tool Design', 'Marketing', 'Information Services'));

SELECT Salary
FROM Employees;

-- Create a SQL query that increases salaries by 12% for all employees that work in one of the following departments
-- – Engineering, Tool Design, Marketing or Information Services.
-- As a result, select and display only the "Salaries" column from the Employees table.
