SELECT DISTINCT fato.id_pedido, profissionais.nome as artista
FROM fato_pedidos fato
JOIN dim_profissionais profissionais ON fato.id_profissional = profissionais.id
JOIN dim_trabalhos trabalhos on fato.id_trabalho = trabalhos.id
JOIN dim_categorias categorias on trabalhos.id_categoria = categorias.id
WHERE categorias.nome = 'tatuagem'


