-- Quais clientes mais perderam pontos por lovers?

SELECT t1.idCliente,
       sum(t2.vlProduto) AS totalPontos
    --    t1.IdTransacao,
    --    t2.IdProduto,
    --    t3.DescCategoriaProduto

FROM transacoes AS t1

LEFT JOIN transacao_produto AS t2
ON t1.IdTransacao = t2.IdTransacao

LEFT JOIN produtos AS t3
ON t2.IdProduto = t3.IdProduto

WHERE DescCategoriaProduto = 'lovers'

GROUP BY t1.idCliente
ORDER BY sum(t2.vlProduto)

limit 5