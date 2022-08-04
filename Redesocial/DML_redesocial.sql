USE db_redesocial;

SELECT * FROM tb_usuarios;
SELECT * FROM tb_grupos;
SELECT * FROM tb_postagens;
SELECT * FROM tb_inscritos;

INSERT INTO tb_usuarios
VALUES('1', 'Fernanda Chagas', 'nanda_ch', 'happy145', 'Url_Fernandinha'),
('2', 'Gabriel Kamui', 'kamui', 'anim3978', 'Url_Gabskamui'),
('3', 'Maria Julia', 'maju', 'sextou661', 'Url_majuzinha')
GO

INSERT INTO tb_grupos
VALUES('10', 'Tarot', 'Baralho de uso recreativo e esotérico', 'Url_Tarot', '1'),
('20', 'Otaku', 'Animes e Jogos', 'Url_Otaku', '2'),
('30', 'Divertida Mente', 'Filme da Disney Pixar', 'Url_Insideout', '3')
GO

INSERT INTO tb_inscritos
VALUES('1', '10', '2022-07-15 14:59'),
('2', '20', '2022-07-20 11:05'),
('3', '30', '2022-07-20 16:33')
GO

INSERT INTO tb_postagens
VALUES('1', 'Veja seu futuro', 'Escolha 10 cartas para consultar seu futuro', 'Url_Futuro', '2022-08-02', '1', '10'),
('2', 'Apenas shoujo', 'Gênero de anime e mangá', 'Url_Shoujo', '2022-08-03', '2', '20'),
('3', 'Melhor filme Pixar', 'Data de lançamento', 'Url_Pixar', '2022-08-01', '3', '30')
GO

SELECT * FROM tb_usuarios
WHERE Nome LIKE '%Chagas%';

SELECT * FROM tb_grupos
WHERE Descricao LIKE '%Disney%';

SELECT * FROM tb_postagens
WHERE Titulo LIKE '%shoujo%';

SELECT * FROM tb_usuarios
FULL JOIN tb_postagens
ON tb_usuarios.Id = tb_postagens.Id