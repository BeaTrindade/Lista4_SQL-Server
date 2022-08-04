USE db_ecomerce;

SELECT * FROM tb_produtos;
SELECT * FROM tb_compras;
SELECT * FROM tb_usuarios;

INSERT INTO tb_produtos
VALUES(001, 'Bulbasaur', 'Pokémon do tipo Grama', 54.30, 7, 'Pelucia', 'url_PeluBulba'),
(004, 'Charmander', 'Pokémon do tipo Fogo', 10.00, 12, 'Chaveiro', 'url_ChaveChar'),
(007, 'Squirtle', 'Pokémon do tipo Agua', 89.99, 3, 'Luminaria', 'url_LumiSquirtle'),
(129, 'Togepi', 'Pokémon do tipo Fada', 59.79, 6, 'Pelucia', 'url_PeluToge')
GO

INSERT INTO tb_compras
VALUES(1, 03, 'Squirtle', '2022-07-25 10:30'),
(2, 04, 'Togepi', '2022-07-14 15:22'),
(3, 02, 'Bulbasaur', '2022-07-29 11:41'),
(4, 01, 'Charmander', '2022-07-30 17:57')
GO

INSERT INTO tb_usuarios
VALUES(01, 'Mauricio Jr', 'maumau@mau.com', 'poke1254', 'Photo_MauJr'),
(02, 'Fabio Iki', 'fabaoiki@iki.com', 'iki879', 'Photo_Fabao'),
(03, 'Jonathan', 'jo_kanuy@kanuy.com', 'kanuy2010', 'Photo_Kanuy'),
(04, 'Henrique Jr', 'henri@kacau.com', 'pichu005', 'Photo_Kacau')
GO

SELECT * FROM tb_produtos
WHERE descricao LIKE '%mon%'

SELECT * FROM tb_usuarios
WHERE nome LIKE '%Jr%'

SELECT p.Id, p.Produto, u.Id, u.Nome
FROM tb_produtos AS p
INNER JOIN  tb_usuarios u
ON p.Id = u.Id