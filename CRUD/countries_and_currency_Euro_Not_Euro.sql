SELECT CountryName, CountryCode, Currency =
    CASE CurrencyCode
        WHEN 'EUR' THEN 'Euro'
        ELSE 'Not Euro'
    END
FROM Countries
ORDER BY CountryName;

-- Find all the countries with information about their currency.
-- Display the "CountryName", "CountryCode", and information about its "Currency": either "Euro" or "Not Euro".
-- Sort the results by country name alphabetically.
