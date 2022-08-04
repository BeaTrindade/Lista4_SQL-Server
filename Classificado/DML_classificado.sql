USE db_classificados;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_anuncios;

INSERT INTO tb_usuarios
VALUES(1, 'Jesus', 'Je', '1234', 'Gamer',' Url_Je'),
(2, 'Ana Louise', 'AnaLu', '12345', 'Nerd', 'Url_Analu'),
(3, 'Rafael', 'Rafifa', '123456', 'Gamer', 'Url_Rafifinha'),
(4, 'João Lucas', 'Boy', '1234567', 'Gamer', 'Url_Joaozinho')
Go

INSERT INTO tb_anuncios
VALUES(1, 'Lolzeiro', 'League of legends', '(99) 4002-3422', 'Url_Je', '2022-07-22', 1),
(2, 'Hobbit','Senhor dos aneis','(99) 4002-1234','Url_Analu','2020-07-22', 2),
(3, 'Fifeiro','Jogador de Fifa','(99) 4002-8922','Url_Rafifinha','2022-07-22', 3),
(4, 'Vavazeiro','Valorant','(99) 4002-1222','Url_Joaozinho','2022-07-22', 4)
Go

SELECT * FROM tb_usuarios
WHERE Pessoa = 'Gamer';

SELECT * FROM tb_anuncios
WHERE Descricao LIKE '%nhor%';

SELECT u.Id, u.Nome, a.Id, a.Titulo
FROM tb_usuarios AS u
RIGHT JOIN tb_anuncios a 
ON u.Id = a.Id