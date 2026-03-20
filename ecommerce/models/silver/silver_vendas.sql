select 
    v.id_venda,
    v.data_venda,
    v.id_cliente,
    v.id_produto,
    v.canal_venda,
    v.quantidade,
    v.preco_unitario::numeric(10,2) as preco_venda,
    -- coluna calculada
    v.quantidade * v.preco_unitario::numeric(10,2) as receita_venda,
    -- dimensões de data
    v.data_venda::date as data_venda_date,
    EXTRACT(YEAR FROM v.data_venda::timestamp) as ano_venda,
    EXTRACT(MONTH FROM v.data_venda::timestamp) as mes_venda,
    EXTRACT(DAY FROM v.data_venda::timestamp) as dia_venda,
    EXTRACT(DOW FROM v.data_venda::timestamp) as dia_semana,
    EXTRACT(HOUR FROM v.data_venda::timestamp) as hora_venda

from {{ ref('bronze_vendas') }} as v