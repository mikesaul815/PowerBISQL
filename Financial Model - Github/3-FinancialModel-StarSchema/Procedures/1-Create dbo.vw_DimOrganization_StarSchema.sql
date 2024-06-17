CREATE VIEW dbo.vw_DimOrganization_StarSchema AS
SELECT 
    D1.OrganizationKey,
    D1.OrganizationName,
    D1.CurrencyKey,
    D4.OrganizationName AS OrganizationNameL4,
    D3.OrganizationName AS OrganizationNameL3,
    D2.OrganizationName AS OrganizationNameL2
FROM dbo.DimOrganization AS D1
LEFT JOIN dbo.DimOrganization AS D2 ON D1.ParentOrganizationAlternateKey = D2.OrganizationKey
LEFT JOIN dbo.DimOrganization AS D3 ON D2.ParentOrganizationKey = D3.OrganizationKey
LEFT JOIN dbo.DimOrganization AS D4 ON D3.ParentOrganizationKey = D4.OrganizationKey

