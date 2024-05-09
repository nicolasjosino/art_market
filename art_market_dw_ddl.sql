CREATE DATABASE art_market_dw

CREATE TABLE dim_cliente (
	id_cliente INT IDENTITY(1,1) PRIMARY KEY,
	nome_cliente VARCHAR(50),
	email VARCHAR(255),
	telefone VARCHAR(15),
	estado VARCHAR(50),
	cidade VARCHAR(50),
	rua VARCHAR(255)
);

CREATE TABLE dim_profissional (
	id_profissioal INT IDENTITY(1,1) PRIMARY KEY,
	nome_profissional VARCHAR(50),
	email VARCHAR(255),
	telefone VARCHAR(15),
	estado VARCHAR(50),
	cidade VARCHAR(50),
	rua VARCHAR(255)
);

CREATE TABLE dim_categoria (
	id_categoria INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50)
);

CREATE TABLE dim_trabalho (
	id_trabalho INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(50),
	descricao VARCHAR(255),
	imagem VARBINARY(MAX),
	publico VARCHAR(3),
	id_profissional INT,
	id_categoria INT,
	CONSTRAINT fk_categoria FOREIGN KEY (id_categoria) REFERENCES dim_categoria (id_categoria),
);

CREATE TABLE dim_datas (
	data_completa DATE PRIMARY KEY,
	semana SMALLINT,
	mes VARCHAR(15),
	trimestre SMALLINT,
	semestre SMALLINT,
	ano INT
);

CREATE TABLE dim_status (
	id_status INT IDENTITY(1,1) PRIMARY KEY,
	nome_status VARCHAR(30)
);

CREATE TABLE fato_pedido (
	id_fato_pedido INT IDENTITY(1,1) PRIMARY KEY,
	valor DECIMAL(15,2),
	id_cliente INT,
	id_profissional INT,
	id_trabalho INT,
	data_pedido DATE,
	CONSTRAINT fk_profissional FOREIGN KEY (id_profissional) REFERENCES dim_profissional (id_profissioal),
	CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES dim_cliente (id_cliente),
	CONSTRAINT fk_trabalho FOREIGN KEY (id_trabalho) REFERENCES dim_trabalho (id_trabalho),
	CONSTRAINT fk_data_pedido FOREIGN KEY (data_pedido) REFERENCES dim_datas (data_completa),
);