CREATE VIEW dbo.vw_DimAccount_StarSchema AS
SELECT
    A.AccountKey,
    PAO.ParentAccountDescription AS AccountDescriptionL3,
    PAO.AccountDescription AS AccountDescriptionL2,
    A.AccountDescription,
    A.OperatorRevPlusExpMinus,
    A.AccountKey AS DimAccount_AccountKey,
    A.ParentAccountKey AS DimAccount_ParentAccountKey,
    PAO.ParentAccountOrderNumber AS AccountOrderNumberL3,
    PAO.AccountOrderNumber AS AccountOrderNumberL2
FROM dbo.DimAccount AS A
LEFT JOIN dbo.DimParentAccountOrder AS PAO ON A.ParentAccountKey = PAO.AccountKey
WHERE A.OperatorRevPlusExpMinus IS NOT NULL
