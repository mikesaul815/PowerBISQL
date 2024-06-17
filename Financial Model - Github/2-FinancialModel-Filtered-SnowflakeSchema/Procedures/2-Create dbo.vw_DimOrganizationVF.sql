CREATE VIEW dbo.vw_DimOrganizationVF AS
SELECT
    CurrencyKey,
    ParentOrganizationAlternateKey,
    ParentOrganizationKey,
    OrganizationKey,
    OrganizationName
 
FROM
    DimOrganization;