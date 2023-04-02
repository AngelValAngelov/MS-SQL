SELECT TownID, Name
From Towns
WHERE Name NOT LIKE '[RBD]%'
ORDER BY Name;

-- Create a SQL query that finds all towns, which do not start with 'R', 'B' or 'D'.
-- Order the result alphabetically by name.
