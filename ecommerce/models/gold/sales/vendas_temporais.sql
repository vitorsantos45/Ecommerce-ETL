SELECT 
    v.data_venda_date AS data_venda,
    v.ano_venda,
    v.mes_venda,
    v.dia_venda,
    CASE v.dia_semana
        WHEN 0 THEN 'Domingo'
        WHEN 1 THEN 'Segunda-feira'
        WHEN 2 THEN 'Terca-feira'
        WHEN 3 THEN 'Quarta-feira'
        WHEN 4 THEN 'Quinta-feira'
        WHEN 5 THEN 'Sexta-feira'
        WHEN 6 THEN 'Sabado'
    END AS dia_semana,
    v.hora_venda,
    SUM(v.receita_venda) as  receita_total,
    SUM(v.quantidade) as quantidade_total,
    COUNT( DISTINCT v.id_venda) as total_vendas,
    COUNT( DISTINCT v.id_cliente) as total_clientes_unicos,
    AVG(v.receita_venda) as ticket_medio
from {{ ref('silver_vendas') }} as v
GROUP BY 1,2,3,4,5,6
ORDER BY data_venda DESC, v.hora_venda