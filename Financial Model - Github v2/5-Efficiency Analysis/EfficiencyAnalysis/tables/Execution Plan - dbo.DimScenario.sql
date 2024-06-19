-- Enable the display of the estimated execution plan
SET SHOWPLAN_XML ON;
GO

-- Execute a query against the view
SELECT *
FROM dbo.DimScenario;
GO

-- Disable the display of the estimated execution plan
SET SHOWPLAN_XML OFF;
GO
