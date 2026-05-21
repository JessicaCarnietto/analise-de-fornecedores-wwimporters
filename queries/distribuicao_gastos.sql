/*
  Query: Distribuição de Gastos por Fornecedor
  Objetivo: Calcular o total transacionado por fornecedor para identificar a 
            concentração financeira da base.
  Filtros: Suporta filtragem por fornecedor e período via Metabase.
*/

SELECT 
    Purchasing.Suppliers.SupplierName,
    SUM(Purchasing.SupplierTransactions.TransactionAmount) AS total_gasto
FROM Purchasing.SupplierTransactions
INNER JOIN Purchasing.Suppliers 
    ON Purchasing.Suppliers.SupplierID = Purchasing.SupplierTransactions.SupplierID
WHERE 1 = 1
    [[AND {{supplier}}]]
    [[AND {{data}}]]
GROUP BY  
    Purchasing.Suppliers.SupplierName
ORDER BY total_gasto DESC
