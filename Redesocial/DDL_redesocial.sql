CREATE DATABASE db_redesocial;

USE db_redesocial;

CREATE TABLE tb_usuarios(
	Id INT NOT NULL PRIMARY KEY,
	Nome VARCHAR(45) NOT NULL,
	Usuario VARCHAR(40) NOT NULL,
	Senha VARCHAR(20) NOT NULL,
	Url_Foto VARCHAR(100) NULL
);

CREATE TABLE tb_grupos( 
	Id INT NOT NULL PRIMARY KEY,
	Grupo VARCHAR(45) NOT NULL,
	Descricao VARCHAR(120) NOT NULL,
	Url_Imagem VARCHAR(200) NOT NULL,
	FK_Criador INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id)
);

CREATE TABLE tb_inscritos( 
	FK_Usuario INT NOT NULL,
	FK_Grupo INT NOT NULL,
	DataHora DATE NOT NULL,
	FOREIGN KEY (FK_Usuario) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id)
);

CREATE TABLE tb_postagens(
	Id INT NOT NULL PRIMARY KEY,
	Titulo VARCHAR(50) NOT NULL,
	Descricao VARCHAR(1000) NOT NULL,
	Url_Imagem VARCHAR(200) NULL,
	Data_postagem DATE NOT NULL,
	FK_Criador INT NOT NULL,
	FK_Grupo INT NOT NULL,
	FOREIGN KEY (FK_Criador) REFERENCES tb_usuarios (Id),
	FOREIGN KEY (FK_Grupo) REFERENCES tb_grupos (Id)
);