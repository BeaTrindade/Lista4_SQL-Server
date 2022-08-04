USE db_marketplace;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_categorias;
SELECT * FROM tb_produtos;
SELECT * FROM compras;

INSERT INTO tb_usuarios
VALUES('1', 'Majin Boo', 'boozim', 'choco123', 'Cliente', 'URL_Boo'),
('2','Son Gohan', 'gohanjr', '514arroz', 'Cliente', 'URL_Gohan'),
('3', 'Chi Chi', 'chii_chi', 's2goku', 'ADM', 'URL_Chii');
GO

INSERT INTO tb_categorias
VALUES('1', 'Academia'),
('4', 'Roupas'),
('5', 'Doces')
GO

INSERT INTO tb_produtos
VALUES('133', 'Halter sextavado', '10kg Ultrawod', '329.99', 'Url_Halter10kg', '3', '1'),
('400', 'Kimono Cardigan', 'Yukata masculino japonês', '59.99', 'Url_KimonoMasc', '3', '4'),
('519', 'Chocolate Milka', 'Milka Oreo 100g', '16.99', 'Url_MilkaOreo', '3', '5')
GO

INSERT INTO compras
VALUES('1', '519', '2022-07-10 11:05'),
('2', '133', '2022-07-15 14:11'),
('3', '400', '2022-07-28 16:58')
GO

SELECT * FROM tb_usuarios
WHERE Tipo LIKE 'Cliente'

SELECT * FROM tb_categorias
WHERE Categoria LIKE 'Doces'

SELECT * FROM tb_produtos
WHERE Valor BETWEEN 0 AND 60

SELECT * FROM tb_usuarios
LEFT JOIN tb_categorias
ON tb_usuarios.Id = tb_categorias.Id