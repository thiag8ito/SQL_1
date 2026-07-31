-- Lista de pedidos feitos no fim de semana

SELECT idTransacao,
        DtCriacao,
        strftime('%w', datetime(substr(DtCriacao, 1, 10))) AS diaSemana

FROM transacoes

WHERE diaSemana IN ('0', '6')