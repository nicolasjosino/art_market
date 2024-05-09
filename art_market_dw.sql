CREATE DATABASE art_market_dw

SELECT DISTINCT data_pedido,
                Day(data_pedido)                  AS dia,
                Month(data_pedido)                AS mes,
                Year(data_pedido)                 AS ano,
				Datepart(quarter, data_pedido) as trimestre
INTO   art_market_dw.dbo.dim_datas
FROM   art_market_ods.dbo.pedidos 

SELECT DISTINCT  id, nome, email, telefone, estado, cidade, rua
INTO art_market_dw.dbo.dim_clientes
FROM art_market_ods.dbo.clientes

SELECT DISTINCT  id, nome, email, telefone, estado, cidade, rua
INTO art_market_dw.dbo.dim_profissionais
FROM art_market_ods.dbo.profissionais

SELECT DISTINCT id, nome, descricao, imagem, publico, id_profissional, id_categoria
INTO art_market_dw.dbo.dim_trabalhos
FROM art_market_ods.dbo.trabalhos

SELECT DISTINCT id, nome
INTO art_market_dw.dbo.dim_categorias
FROM art_market_ods.dbo.categorias

SELECT art_market_ods.dbo.pedidos.id as id_pedido,
	   art_market_ods.dbo.itens_pedido.valor as valor,
	   art_market_ods.dbo.pedidos.data_pedido as data_pedido,
	   art_market_ods.dbo.pedidos.id_cliente,
	   art_market_ods.dbo.pedidos.id_profissional,
	   art_market_ods.dbo.itens_pedido.id_trabalho
INTO art_market_dw.dbo.fato_pedidos
FROM art_market_ods.dbo.pedidos
JOIN art_market_ods.dbo.itens_pedido ON art_market_ods.dbo.itens_pedido.id_pedido = art_market_ods.dbo.pedidos.id