Select Purchasing.Vendor.Name,SalesOrderHeader.TerritoryID, Sales.SalesTerritory.Name, Sales.SalesOrderDetail.OrderQty, Sales.SalesPerson.BusinessEntityID
From Sales.SalesOrderHeader
Left Join Sales.SalesOrderDetail on SalesOrderDetail.SalesOrderID = SalesOrderHeader.SalesOrderID
Left Join Sales.SalesTerritory on Sales.SalesTerritory.TerritoryID = Sales.SalesOrderHeader.TerritoryID
Left Join Sales.SalesPerson on Sales.SalesPerson.TerritoryID = Sales.SalesOrderHeader.TerritoryID
Right Join Purchasing.Vendor on Purchasing.Vendor.BusinessEntityID = Sales.SalesPerson.BusinessEntityID

/* Inner Join Sales.SalesPerson on Sales.SalesPerson.TerritoryID = Sales.SalesOrderHeader.TerritoryID
Inner Join Purchasing.Vendor on Purchasing.Vendor.BusinessEntityID = Sales.SalesPer */