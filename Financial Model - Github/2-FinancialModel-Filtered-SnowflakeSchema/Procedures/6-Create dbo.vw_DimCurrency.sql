CREATE VIEW dbo.vw_DimCurrency AS
SELECT
    CurrencyAlternateKey,
	CurrencyKey,
	CurrencyName
FROM
    DimCurrency
