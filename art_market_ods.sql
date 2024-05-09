CREATE DATABASE art_market_ods

SELECT clientes.id, Trim(clientes.nome) AS nome,
	   Trim(clientes.email) AS email,
	   Trim(clientes.telefone) AS telefone,
	   Trim(clientes.estado) AS estado,
	   Trim(clientes.cidade) AS cidade,
	   Trim(clientes.rua) AS rua
INTO art_market_ods.dbo.clientes
FROM art_market.dbo.clientes

SELECT profissionais.id,
	   Trim(profissionais.nome) AS nome,
	   Trim(profissionais.email) AS email,
	   Trim(profissionais.telefone) AS telefone,
	   Trim(profissionais.estado) AS estado,
	   Trim(profissionais.cidade) AS cidade,
	   Trim(profissionais.rua) AS rua
INTO art_market_ods.dbo.profissionais
FROM art_market.dbo.profissionais

SELECT categorias.id,
	   Trim(categorias.nome) AS nome
INTO art_market_ods.dbo.categorias
FROM art_market.dbo.categorias

SELECT trabalhos.id,
	   Trim(trabalhos.nome) AS nome,
	   Trim(trabalhos.descricao) AS descricao,
	   trabalhos.imagem,
	   trabalhos.id_profissional,
	   trabalhos.id_categoria,
	   (SELECT CASE WHEN trabalhos.publico = 1	THEN 'SIM' ELSE 'NÃO' END) AS publico
INTO art_market_ods.dbo.trabalhos
FROM art_market.dbo.trabalhos

SELECT pedidos.id,
	   pedidos.id_cliente,
	   pedidos.id_profissional,
	   pedidos.data_pedido,
	   (SELECT CASE WHEN pedidos.status_pedido = 1 THEN 'Em Andamento'
					WHEN pedidos.status_pedido = 2 THEN 'Concluído'
					WHEN pedidos.status_pedido = 3 THEN 'Cancelado'
					ELSE 'Indefinido' END) AS status
INTO art_market_ods.dbo.pedidos
FROM art_market.dbo.pedidos

SELECT itens_pedido.id,
	   itens_pedido.id_pedido,
	   itens_pedido.id_trabalho,
	   itens_pedido.valor
INTO art_market_ods.dbo.itens_pedido
FROM art_market.dbo.itens_pedido