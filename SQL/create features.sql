CREATE VIEW dbo.vw_churn_features AS
SELECT
CustomerID,
Churn,
AccountWeeks,
AccountWeeks / 4.345 AS TenureMonths,
CustServCalls,
DayMins,
DayCalls,
MonthlyCharge,
OverageFee,
RoamMins,
(DayMins + RoamMins) AS TotalMins
FROM dbo.churn_clean;
