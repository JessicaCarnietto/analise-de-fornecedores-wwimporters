/*
  Query: Evolução de Movimentação Financeira Mensal
  Objetivo: Visualizar a tendência de gastos ao longo do tempo.
  Tratamento: 
    - Agrupamento mensal utilizando DATEFROMPARTS.
    - Filtro de segurança 'IsFinalized' para garantir apenas transações confirmadas.
  Observação: As oscilações negativas refletem ajustes contábeis e devoluções.
*/

SELECT 
    DATEFROMPARTS(YEAR(st.TransactionDate), MONTH(st.TransactionDate), 1) AS mes_ano,
    SUM(st.TransactionAmount) AS total_gasto
FROM Purchasing.SupplierTransactions st
INNER JOIN Purchasing.Suppliers s 
    ON s.SupplierID = st.SupplierID
WHERE 1 = 1
    AND st.IsFinalized = 'true'
    [[AND {{supplier}}]]
    [[AND {{data}}]]
GROUP BY 
    DATEFROMPARTS(YEAR(st.TransactionDate), MONTH(st.TransactionDate), 1)
ORDER BY mes_ano
