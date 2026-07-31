-- Listar todas as transações adicionando uma coluna nova sinalizando 
-- “alto”, “médio” e “baixo” para o valor dos pontos [<10 ; <500; >=500]


SELECT idTransacaoProduto,
       vlProduto,
       CASE
           WHEN vlProduto < 10 THEN 'baixo'
           WHEN vlProduto < 500 THEN 'médio'
           ELSE'alto'  
       END AS EscalaPontos

FROM transacao_produto

ORDER BY vlProduto 