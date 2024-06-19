CREATE VIEW dbo.vw_DimAccountVFHF AS
SELECT
    AccountKey,
	AccountDescription,
	ParentAccountKey
FROM
    DimAccount
WHERE
	OperatorRevPlusExpMinus IS NOT NULL