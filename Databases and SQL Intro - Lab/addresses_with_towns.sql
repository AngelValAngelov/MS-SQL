SELECT TOP (50) FirstName, LastName, Towns.Name, Addresses.AddressText
FROM Employees
INNER JOIN Addresses ON Addresses.AddressID = Employees.AddressID
INNER JOIN Towns ON Addresses.TownID = Towns.TownID
ORDER BY FirstName, LastName;

-- Sorted by FirstName in ascending order then by LastName. Select first 50 employees.