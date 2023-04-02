CREATE VIEW V_EmployeesHiredAfter2000
AS
    SELECT FirstName, LastName
    FROM Employees
    WHERE DATEPART(YEAR, HireDate) > 2000;

-- Create a SQL query that creates view "V_EmployeesHiredAfter2000"
-- with the first and the last name for all employees, hired after the year 2000.
