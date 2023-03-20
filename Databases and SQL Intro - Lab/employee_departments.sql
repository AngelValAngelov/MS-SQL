    SELECT TOP (5) EmployeeID, FirstName, Salary, d.Name
    FROM Employees as e
    INNER JOIN Departments AS d on d.DepartmentID = e.DepartmentID
    WHERE e.Salary > 15000
    ORDER BY e.DepartmentID

-- Filter only employees with salary higher than 15000. Return the first 5 rows sorted by DepartmentID in ascending order.