CREATE TABLE DimParentAccount (
    AccountKey INT PRIMARY KEY,
    AccountCodeAlternateKey INT,
    AccountOrderNumber INT,
    ParentAccountDescription VARCHAR(255)
);

INSERT INTO DimParentAccount (AccountKey, AccountCodeAlternateKey, AccountOrderNumber, ParentAccountDescription)
SELECT 
    da.AccountKey,
    da.AccountCodeAlternateKey,
    CASE 
        WHEN da.AccountCodeAlternateKey = 4 THEN 11
        WHEN da.AccountCodeAlternateKey = 60 THEN 4
        WHEN da.AccountCodeAlternateKey = 80 THEN 10
        WHEN da.AccountCodeAlternateKey = 600 THEN 5
        WHEN da.AccountCodeAlternateKey = 620 THEN 6
        WHEN da.AccountCodeAlternateKey = 630 THEN 7
        WHEN da.AccountCodeAlternateKey = 660 THEN 8
        WHEN da.AccountCodeAlternateKey = 680 THEN 9
        WHEN da.AccountCodeAlternateKey = 4100 THEN 2
        WHEN da.AccountCodeAlternateKey = 4110 THEN 1
        WHEN da.AccountCodeAlternateKey = 5000 THEN 3
    END AS AccountOrderNumber,
    CASE 
        WHEN da.AccountCodeAlternateKey = 4 THEN 'Tax'
        WHEN da.AccountCodeAlternateKey = 60 THEN 'Operating Expenses'
        WHEN da.AccountCodeAlternateKey = 80 THEN 'Other Income and Expense'
        WHEN da.AccountCodeAlternateKey = 600 THEN 'Operating Expenses'
        WHEN da.AccountCodeAlternateKey = 620 THEN 'Operating Expenses'
        WHEN da.AccountCodeAlternateKey = 630 THEN 'Operating Expenses'
        WHEN da.AccountCodeAlternateKey = 660 THEN 'Operating Expenses'
        WHEN da.AccountCodeAlternateKey = 680 THEN 'Operating Expenses'
        WHEN da.AccountCodeAlternateKey = 4100 THEN 'Total Sales'
        WHEN da.AccountCodeAlternateKey = 4110 THEN 'Total Sales'
        WHEN da.AccountCodeAlternateKey = 5000 THEN 'Total Cost of Sales'
    END AS ParentAccountDescription
FROM DimAccount da
WHERE da.AccountCodeAlternateKey IN (4, 60, 80, 600, 620, 630, 660, 680, 4100, 4110, 5000);
