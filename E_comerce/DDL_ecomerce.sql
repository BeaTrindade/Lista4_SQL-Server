CREATE DATABASE db_ecomerce;

USE db_ecomerce;

CREATE TABLE tb_usuarios
(
	id INT NOT NULL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	email VARCHAR(50) NOT NULL,
	senha VARCHAR(15) NOT NULL,
	foto VARCHAR(300) NULL,
);

CREATE TABLE tb_compras
(
	id INT NOT NULL PRIMARY KEY,
	FK_usuarios INT,
	FK_produtos VARCHAR(100),
	DataHora VARCHAR(50),
	FOREIGN KEY (FK_usuarios) REFERENCES tb_usuarios(id),
	FOREIGN KEY (FK_produtos) REFERENCES tb_produtos(produto),
);

CREATE TABLE tb_produtos
(
	id INT NOT NULL,
	produto VARCHAR(100) NOT NULL PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL,
	valor FLOAT NOT NULL,
	estoque INT NOT NULL,
	categoria VARCHAR(100),
	url_imagem VARCHAR(250) NULL,
);