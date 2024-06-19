CREATE VIEW dbo.vw_FactCurrencyRateVFHF AS
SELECT
    AverageRate,
	CurrencyKey,
	Date,
	DateKey
FROM
    FactCurrencyRate
WHERE
	CurrencyKey IN (6, 19, 36, 100)