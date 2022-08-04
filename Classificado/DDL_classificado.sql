CREATE DATABASE db_classificados;

USE db_classificados;

CREATE TABLE tb_usuarios 
(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(40) NOT NULL,
	Usuario VARCHAR(30) NOT NULL,
	Senha VARCHAR(25) NOT NULL,
	Pessoa VARCHAR(100) NOT NULL,
	Url_Imagem VARCHAR(200) NULL

);

CREATE TABLE tb_anuncios 
(
	Id INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(100) NOT NULL,
	Descricao VARCHAR(800) NOT NULL,
	Contato VARCHAR(100) NOT NULL,
	Url_imagem VARCHAR(200) NULL,
	DataHora Date NOT NULL, 
	FK_usuario INT NOT NULL,
	FOREIGN KEY (FK_usuario) REFERENCES tb_usuarios (Id)
);