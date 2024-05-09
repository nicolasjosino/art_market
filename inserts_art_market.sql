INSERT INTO art_market.dbo.clientes(nome, email, telefone, estado, cidade, rua)
VALUES ('Rafaela Lima', 'rafaela.lima@example.com', '85987654321', 'CE', 'Fortaleza', 'Avenida Beira Mar, 567'),
('Pedro Oliveira', 'pedro.oliveira@example.com', '61998761234', 'DF', 'Brasília', 'Quadra 301, Bloco A, 123'),
('Luiz Silva', 'luiz.silva@example.com', '21987658765', 'RJ', 'Niterói', 'Rua do Amparo, 456'),
('Camila Costa', 'camila.costa@example.com', '41998769876', 'PR', 'Londrina', 'Avenida Higienópolis, 789'),
('Juliana Santos', 'juliana.santos@example.com', '21998765432', 'RJ', 'Rio de Janeiro', 'Avenida das Américas, 1234'),
('Lucas Lima', 'lucas.lima@example.com', '11987656789', 'SP', 'Campinas', 'Rua Antônio Lapa, 567')

INSERT INTO art_market.dbo.profissionais(nome, email, telefone, estado, cidade, rua)
VALUES ('João da Silva', 'joao.silva@example.com', '11987654321', 'SP', 'São Paulo', 'Rua das Flores, 123'),
('Maria Oliveira', 'maria.oliveira@example.com', '21998765432', 'RJ', 'Rio de Janeiro', 'Avenida Copacabana, 456'),
('José Santos', 'jose.santos@example.com', '31987651234', 'MG', 'Belo Horizonte', 'Rua das Palmeiras, 789'),
('Ana Souza', 'ana.souza@example.com', '41998761234', 'PR', 'Curitiba', 'Rua dos Pinheiros, 321'),
('Carlos Ferreira', 'carlos.ferreira@example.com', '51987656789', 'RS', 'Porto Alegre', 'Avenida da Independência, 987'),
('Fernanda Santos', 'fernanda.santos@example.com', '31998765432', 'MG', 'Uberlândia', 'Rua das Acácias, 234')

INSERT INTO art_market.dbo.categorias(nome)
VALUES ('Tatuagem'),
('Pintura'),
('Impressão 3D'),
('Desenho'),
('Design Gráfico')

INSERT INTO art_market.dbo.trabalhos(nome, descricao, id_profissional, id_categoria, publico)
VALUES ('Tatuagem Tribal', 'Tatuagem tribal no braço', 1, 1, 1),
('Pintura Estilo Anime', 'Pintura estilo anime do Neymar Camisa 10 da Seleção', 3, 2, 1),
('Funko Pop', 'Funko Pop do Elon Musk', 2, 3, 0),
('Arte Digital do Chaves', 'Desenhar Chaves dentro do Barril', 4, 4, 1),
('Artes Social Media', '7 Artes para redes sociais de Odontologia', 5, 5, 1),
('Tatuagem estilo Anime', 'Tatuagem estilo anime do Silvio Santos', 1, 1, 1)

INSERT INTO art_market.dbo.pedidos(id_cliente, id_profissional, data_pedido, status_pedido)
VALUES (3, 5, '2023-05-24', 1),
(2, 1, '2023-10-03', 2),
(5, 2, '2023-11-17', 3),
(1, 4, '2023-07-09', 2),
(4, 3, '2023-12-22', 1),
(1, 6, '2023-08-18', 1),
(3, 4, '2023-12-18', 1)

INSERT INTO art_market.dbo.itens_pedido(id_pedido, id_trabalho, valor)
VALUES (5, 2, 499.90),
(3, 4, 380.00),
(1, 1, 1290.90),
(6, 3, 250.00),
(2, 5, 450.00),
(1, 6, 3999.90)

INSERT INTO art_market.dbo.trabalhos(nome, descricao, id_profissional, id_categoria, publico)
VALUES ('   Pintura de parede   ', ' Pintura de parede com ilustração encomendada', 3, 2, 1)

INSERT INTO art_market.dbo.pedidos(id_cliente, id_profissional, data_pedido, status_pedido)
VALUES (5, 3, '2024-01-01', 1)

INSERT INTO art_market.dbo.itens_pedido(id_pedido, id_trabalho, valor)
VALUES (8, 7, 6999.99)