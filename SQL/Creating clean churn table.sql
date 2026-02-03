SELECT
ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS CustomerID,*
INTO dbo.churn_clean
FROM dbo.churn;
