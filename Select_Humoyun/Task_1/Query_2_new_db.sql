SELECT 
  ST.Name AS StoreName,
  E.FirstName,
  E.LastName,
  SUM(SA.Amount) AS TotalRevenue
FROM 
  Stores ST
JOIN 
  Employees E ON ST.ID = E.StoreID
JOIN 
  Sales SA ON E.ID = SA.EmployeeID
WHERE 
  YEAR(SA.Date) = 2017
GROUP BY 
  ST.Name, E.FirstName, E.LastName
HAVING 
  SUM(SA.Amount) = (
    SELECT 
      MAX(TotalRevenue)
    FROM (
      SELECT 
        SUM(Sales.Amount) AS TotalRevenue
      FROM 
        Sales
      WHERE 
        YEAR(Sales.Date) = 2017
      GROUP BY 
        EmployeeID
    ) AS RevenueByEmployee
  ) LIMIT 0, 25;