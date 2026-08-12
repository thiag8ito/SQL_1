-- Clientes mais antigos, tem mais frequência de transação?

SELECT t1.idCliente,
       julianday('now') - julianday(substr(t1.DtCriacao, 1, 19)) AS idadeBase,
       count(t2.IdTransacao) AS qtdTransacoes

FROM clientes AS t1

LEFT JOIN transacoes AS t2
ON t1.idCliente = t2.idCliente

GROUP BY t1.idCliente, idadeBase