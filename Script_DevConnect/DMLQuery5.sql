-- Inserir usuários
INSERT INTO tb_usuario(nome_completo, nome_usuario, email, senha, foto_perfil_url)
VALUES
('Samuel Sousa','samuel_s','samuelsousa@gmail.com','12345ma','fotoperfildevconnect.com'),
('João','joaozin123','joao123@gmail.com','joo12','fotofuscaazul.com'),
('Ana','aninha','ana47@gmail.com','ana4632','fotodecarros.com'),
('Pedro','pedrinho','pedro789@gmail.com','pedro0989','fotonapraia.com');
GO

-- Inserir publicações
INSERT INTO tb_publicacao(id_usuario, descricao, imagem_url, data_publicacao)
VALUES
(1,'Imagem da empresa DevConnect','logo_devconnect.com','2025-12-02'),
(2,'Pela primeira vez no jogo do Palmeiras','foto-jogo-palmeiras-vitoria.com','2025-11-01'),
(3,'Olha meu passarinho','foto-passarinho-voando.com','2025-06-29');
GO

-- Inserir comentários
INSERT INTO tb_comentario(id_usuario, id_publicacao, texto, data_coment)
VALUES
(1,1,'Olha essa logo da DevConnect','2025-10-12'),
(3,3,'Esse carro é meu sonho de consumo','2025-05-05'),
(2,2,'Nossa, que vontade de tomar um banho','2025-06-23');
GO

-- Inserir curtidas
INSERT INTO tb_curtida(id_usuario, id_publicacao)
VALUES
(1,1),
(3,3),
(2,2);
GO

-- Inserir seguidores
INSERT INTO tb_seguidor(id_usuario_seguir,id_usuario_seguida)
VALUES
(1,3),
(3,2),
(2,1);
GO
