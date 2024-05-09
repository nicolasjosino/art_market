ALTER TABLE dim_clientes
ADD PRIMARY KEY (id)

ALTER TABLE dim_profissionais
ADD PRIMARY KEY (id)

ALTER TABLE dim_datas
ADD PRIMARY KEY (data_pedido)

ALTER TABLE dim_categorias
ADD PRIMARY KEY (id)

ALTER TABLE dim_status_pedidos
ADD PRIMARY KEY (id)

ALTER TABLE dim_trabalhos
ADD PRIMARY KEY (id)

ALTER TABLE dim_trabalhos
ADD FOREIGN KEY (id_categoria) REFERENCES dim_categorias(id)

ALTER TABLE fato_pedidos
ADD FOREIGN KEY (id_cliente) REFERENCES dim_clientes(id)

ALTER TABLE fato_pedidos
ADD FOREIGN KEY (id_profissional) REFERENCES dim_profissionais(id)

ALTER TABLE fato_pedidos
ADD FOREIGN KEY (data_pedido) REFERENCES dim_datas(data_pedido)

ALTER TABLE fato_pedidos
ADD FOREIGN KEY (id_trabalho) REFERENCES dim_trabalhos(id)

ALTER TABLE fato_pedidos
ADD FOREIGN KEY (id_status) REFERENCES dim_status_pedidos(id)

ALTER TABLE fato_pedidos
ADD PRIMARY KEY (id_pedido, id_trabalho)

