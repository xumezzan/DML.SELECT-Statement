SELECT s.Name AS StoreName, e.FirstName, e.LastName, MAX(sa.Amount) AS MaxRevenue
FROM Stores s
JOIN Employees e ON s.ID = e.StoreID
JOIN Sales sa ON e.ID = sa.EmployeeID
WHERE YEAR(sa.Date) = 2017
GROUP BY s.Name, e.FirstName, e.LastName
LIMIT 0, 25;