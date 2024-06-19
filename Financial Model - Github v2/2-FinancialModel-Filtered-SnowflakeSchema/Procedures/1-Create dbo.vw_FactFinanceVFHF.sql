CREATE VIEW dbo.vw_FactFinanceVFHF AS
SELECT
    OrganizationKey,
    DateKey,
    ScenarioKey,
    AccountKey,
    CalculatedAmountRevPlusExpMinus,
    Amount
FROM
    FactFinance
WHERE
    OperatorRevPlusExpMinus IS NOT NULL;
