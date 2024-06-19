CREATE VIEW dbo.vw_DimDateVF AS
SELECT
	DateKey,
	FiscalYear,
	EnglishMonthName,
	FiscalMonthNumber
FROM
    DimDate;