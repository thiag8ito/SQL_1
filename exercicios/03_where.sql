-- Lista de clientes com zero pontos

SELECT idCliente,
       qtdePontos 

FROM clientes

WHERE qtdePontos = 0