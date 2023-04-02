SELECT FirstName
FROM Employees
WHERE DepartmentID IN (3,10)
AND HireDate BETWEEN '01/01/1995' AND '12/31/2005';

-- Create a SQL query that finds the first names of all employees whose department ID is 3 or 10,
-- and the hire year is between 1995 and 2005 inclusive.
