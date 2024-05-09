CREATE DATABASE art_market

CREATE TABLE clientes
  (
     id       SMALLINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
     nome     VARCHAR(50) NOT NULL,
     email    VARCHAR(255) NOT NULL,
     telefone VARCHAR(15) NULL,
     estado   VARCHAR(50) NULL,
     cidade   VARCHAR(50) NULL,
     rua      VARCHAR(150) NULL
  )

CREATE TABLE profissionais
  (
     id       SMALLINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
     nome     VARCHAR(50) NOT NULL,
     email    VARCHAR (255) NOT NULL,
     telefone VARCHAR(15) NULL,
     estado   VARCHAR(50) NULL,
     cidade   VARCHAR(50) NULL,
     rua      VARCHAR(150) NULL
  )

CREATE TABLE categorias
  (
     id   SMALLINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
     nome VARCHAR(50) NOT NULL
  )

CREATE TABLE trabalhos
  (
     id              SMALLINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
     nome            VARCHAR(50) NOT NULL,
     descricao       VARCHAR (255) NULL,
     imagem          VARBINARY (max) NULL,
     id_profissional SMALLINT FOREIGN KEY REFERENCES profissionais(id),
     id_categoria    SMALLINT FOREIGN KEY REFERENCES categorias(id),
     publico         BIT
  )

CREATE TABLE pedidos
  (
     id              SMALLINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
     id_cliente      SMALLINT FOREIGN KEY REFERENCES clientes(id),
     id_profissional SMALLINT FOREIGN KEY REFERENCES profissionais(id),
     data_pedido     DATE NOT NULL,
     status_pedido   VARCHAR (15) NOT NULL
  )

CREATE TABLE itens_pedido
  (
     id          SMALLINT NOT NULL IDENTITY(1, 1) PRIMARY KEY,
     id_pedido   SMALLINT FOREIGN KEY REFERENCES pedidos(id),
     id_trabalho SMALLINT FOREIGN KEY REFERENCES trabalhos(id),
     valor       DECIMAL (15, 2) NOT NULL
  ) 