-- Create the new table
CREATE TABLE DimParentAccountOrder (
    AccountKey INT PRIMARY KEY,
    AccountCodeAlternateKey INT,
    ParentAccountCodeAlternateKey INT,
    ParentAccountKey INT,
    AccountOrderNumber INT,
    ParentAccountDescription VARCHAR(255),
    ParentAccountOrderNumber INT,
    AccountDescription VARCHAR(255)
);

-- Insert data into the new table
INSERT INTO DimParentAccountOrder (
    AccountKey,
    AccountCodeAlternateKey,
    ParentAccountCodeAlternateKey,
    ParentAccountKey,
    AccountOrderNumber,
    ParentAccountDescription,
    ParentAccountOrderNumber,
    AccountDescription
)
SELECT 
    da.AccountKey,
    da.AccountCodeAlternateKey,
    CASE 
        WHEN da.AccountCodeAlternateKey = 4 THEN 4
        WHEN da.AccountCodeAlternateKey = 60 THEN 60
        WHEN da.AccountCodeAlternateKey = 80 THEN 80
        WHEN da.AccountCodeAlternateKey = 600 THEN 600
        WHEN da.AccountCodeAlternateKey = 620 THEN 620
        WHEN da.AccountCodeAlternateKey = 630 THEN 630
        WHEN da.AccountCodeAlternateKey = 660 THEN 660
        WHEN da.AccountCodeAlternateKey = 680 THEN 680
        WHEN da.AccountCodeAlternateKey = 4100 THEN 4100
        WHEN da.AccountCodeAlternateKey = 4110 THEN 4110
        WHEN da.AccountCodeAlternateKey = 5000 THEN 5000
    END AS ParentAccountCodeAlternateKey,
    da2.AccountKey AS ParentAccountKey,
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
    END AS ParentAccountDescription,
    CASE 
        WHEN da.AccountCodeAlternateKey = 4 THEN 5
        WHEN da.AccountCodeAlternateKey = 60 THEN 3
        WHEN da.AccountCodeAlternateKey = 80 THEN 4
        WHEN da.AccountCodeAlternateKey = 600 THEN 3
        WHEN da.AccountCodeAlternateKey = 620 THEN 3
        WHEN da.AccountCodeAlternateKey = 630 THEN 3
        WHEN da.AccountCodeAlternateKey = 660 THEN 3
        WHEN da.AccountCodeAlternateKey = 680 THEN 3
        WHEN da.AccountCodeAlternateKey = 4100 THEN 1
        WHEN da.AccountCodeAlternateKey = 4110 THEN 1
        WHEN da.AccountCodeAlternateKey = 5000 THEN 2
    END AS ParentAccountOrderNumber,
    CASE 
        WHEN da.AccountCodeAlternateKey = 4 THEN 'Tax'
        WHEN da.AccountCodeAlternateKey = 60 THEN 'Operating Expenses'
        WHEN da.AccountCodeAlternateKey = 80 THEN 'Other Income and Expense'
        WHEN da.AccountCodeAlternateKey = 600 THEN 'Labor Expenses'
        WHEN da.AccountCodeAlternateKey = 620 THEN 'Travel Expenses'
        WHEN da.AccountCodeAlternateKey = 630 THEN 'Marketing'
        WHEN da.AccountCodeAlternateKey = 660 THEN 'Telephone and Utilities'
        WHEN da.AccountCodeAlternateKey = 680 THEN 'Depreciation'
        WHEN da.AccountCodeAlternateKey = 4100 THEN 'Net Sales'
        WHEN da.AccountCodeAlternateKey = 4110 THEN 'Gross Sales'
        WHEN da.AccountCodeAlternateKey = 5000 THEN 'Total Cost of Sales'
    END AS AccountDescription
FROM DimAccount da
JOIN DimAccount da2 ON da.AccountCodeAlternateKey = da2.AccountCodeAlternateKey
WHERE da.AccountCodeAlternateKey IN (4, 60, 80, 600, 620, 630, 660, 680, 4100, 4110, 5000);