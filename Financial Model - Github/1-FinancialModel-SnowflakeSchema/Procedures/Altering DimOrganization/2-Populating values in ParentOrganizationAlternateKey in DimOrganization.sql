
-- Update the DimOrganization table with the new data
UPDATE DimOrganization
SET ParentOrganizationAlternateKey = CASE 
    WHEN OrganizationKey = 10 THEN 10
    WHEN OrganizationKey = 9 THEN 9
    WHEN OrganizationKey = 2 THEN 2
    WHEN OrganizationKey = 8 THEN 8
    WHEN OrganizationKey = 14 THEN 14
    WHEN OrganizationKey = 11 THEN 11
    WHEN OrganizationKey = 12 THEN 12
    WHEN OrganizationKey = 13 THEN 13
    WHEN OrganizationKey = 3 THEN 14
    WHEN OrganizationKey = 4 THEN 14
    WHEN OrganizationKey = 5 THEN 14
    WHEN OrganizationKey = 6 THEN 14
    WHEN OrganizationKey = 7 THEN 14
    ELSE NULL
END;

-- Verify the update
SELECT * FROM DimOrganization;
