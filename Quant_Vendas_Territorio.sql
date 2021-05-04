Select count(b.OrderQty) as 'Quant_Vendas', c.Name
from Sales.SalesOrderHeader as a
Inner Join Sales.SalesOrderDetail as b on a.SalesOrderID = b.SalesOrderID
Inner Join Sales.SalesTerritory as c on a.TerritoryID = c.TerritoryID
WHERE (MONTH(OrderDate) BETWEEN 01 and 06)
and
(YEAR(OrderDate) = 2014)
Group By c.Name
Order by count(b.OrderQty)
