Select Produto.Name as 'Nome_Produto', Territorio.Name, count(Detalhe_Venda.OrderQty) as 'Quantidade'
from Sales.SalesOrderDetail as Detalhe_Venda
Inner Join  Production.Product as Produto on Detalhe_Venda.ProductID = Produto.ProductID
Inner Join Sales.SalesOrderHeader as Principal on Principal.SalesOrderID = Detalhe_Venda.SalesOrderDetailID
Inner Join Sales.SalesTerritory as Territorio on Territorio.TerritoryID = Principal.TerritoryID
Where Territorio.Name = 'Northeast'
Group By Territorio.Name, Produto.Name
Order By count(Detalhe_Venda.OrderQty)
