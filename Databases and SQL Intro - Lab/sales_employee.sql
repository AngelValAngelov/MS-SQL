SELECT EmployeeID, FirstName, LastName, Name
FROM Employees AS e
INNER JOIN Departments AS d ON e.DepartmentID = d.DepartmentID
WHERE d.Name = 'Sales'
ORDER BY e.EmployeeID;

-- Sorted by EmployeeID in ascending order. Select only employees from “Sales” department.