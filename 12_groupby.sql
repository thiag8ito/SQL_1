-- SELECT IdProduto,
--         count(*)

-- FROM transacao_produto

-- GROUP BY IdProduto

SELECT idCliente,
        sum(qtdePontos) AS somaPontos,
        count(idTransacao) AS totalTransacao

FROM transacoes

WHERE DtCriacao >= '2025-07-01'
AND DtCriacao < '2025-08-01'

GROUP BY idCliente
HAVING sum(qtdePontos) >= 4000

ORDER BY somaPontos DESC

LIMIT 10