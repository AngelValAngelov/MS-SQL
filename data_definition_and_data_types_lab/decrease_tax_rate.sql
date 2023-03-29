UPDATE Payments
SET TaxRate *= 0.97
FROM Payments

SELECT TaxRate
FROM Payments

-- Use Hotel database and decrease tax rate by 3% to all payments.
-- Then select only TaxRate column from the Payments table.
