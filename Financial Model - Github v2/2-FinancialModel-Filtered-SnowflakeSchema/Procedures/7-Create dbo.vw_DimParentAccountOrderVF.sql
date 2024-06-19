CREATE VIEW dbo.vw_DimParentAccountOrderVF AS
SELECT
    AccountKey,
	AccountDescription,
	ParentAccountDescription,
	AccountOrderNumber,
	ParentAccountOrderNumber,
	ParentAccountKey
FROM
    DimParentAccountOrder;