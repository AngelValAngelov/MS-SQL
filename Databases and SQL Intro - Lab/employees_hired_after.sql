SELECT FirstName, LastName, HireDate, Name
FROM Employees as e
JOIN Departments AS d ON d.DepartmentID = e.DepartmentID
WHERE e.HireDate > '1.1.1999' AND e.DepartmentID IN (3, 10)
ORDER BY e.HireDate;


-- Filter only employees hired after 1.1.1999 and are from either "Sales" or
-- "Finance" departments, sorted by HireDate (ascending).