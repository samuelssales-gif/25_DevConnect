--DML
USE db_escola_T;

INSERT INTO tb_escola (nome, usuario, email, senha, perfil)
VALUES('samuel', 'samuel77',' samu@gmail', ' 5790', 'foto');

SELECT * FROM tb_escola; 

INSERT INTO tb_turma (usuario, descricao, imagemURL , dataPublicacao)
VALUES
      ('samuel77', 'eu sou massa', 'foto', '12/08/25');
  
SELECT * FROM tb_turma;
