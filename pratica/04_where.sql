SELECT *

FROM produtos

-- WHERE DescNomeProduto IN ('Churn_10pp', 'Churn_2pp', 'Churn_5pp')

-- WHERE DescNomeProduto LIKE '%Churn%'  -- o LIKE é custoso para o sistema

WHERE DescCategoriaProduto = 'churn_model'
