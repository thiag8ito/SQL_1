-- Qual o produto mais transacionado?

SELECT IdProduto,
       sum(QtdeProduto) AS sumProdutos

FROM transacao_produto

GROUP BY IdProduto
ORDER BY count(*) DESC