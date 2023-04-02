SELECT Name
FROM Towns
WHERE LEN(Name) IN (5, 6)
ORDER BY Name;

-- Create a SQL query that finds all town names, which are 5 or 6 symbols long.
-- Order the result alphabetically by town name.
