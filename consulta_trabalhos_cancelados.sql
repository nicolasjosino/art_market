SELECT DISTINCT fato.id, trabalhos.nome, profissionais.nome as artista, status_p.status_pedido
FROM fato_pedidos fato
JOIN dim_trabalhos trabalhos ON fato.id_trabalho = trabalhos.id
JOIN dim_profissionais profissionais ON fato.id_profissional = profissionais.id
JOIN dim_status_pedidos status_p ON fato.id_status = status_p.id
WHERE status_pedido = 'Cancelado'

