SELECT TOP (5) EmployeeID, JobTitle, Employees.AddressID, Addresses.AddressText
FROM Employees, Addresses
WHERE Employees.AddressID = Addresses.AddressID
ORDER BY Employees.AddressID;

-- Return the first 5 rows sorted by AddressId in ascending order.
