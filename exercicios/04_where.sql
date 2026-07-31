-- Lista de clientes com 100 a 200 pontos (ambos inclusive)

SELECT idCliente,
       qtdePontos 

From clientes

WHERE qtdePontos BETWEEN 100 AND 200