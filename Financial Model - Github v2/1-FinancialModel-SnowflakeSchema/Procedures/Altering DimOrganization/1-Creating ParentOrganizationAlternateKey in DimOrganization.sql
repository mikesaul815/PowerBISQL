-- Add the new column to the DimOrganization table
ALTER TABLE DimOrganization
ADD ParentOrganizationAlternateKey INT;
