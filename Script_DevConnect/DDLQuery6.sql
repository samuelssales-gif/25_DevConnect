--DDL
CREATE DATABASE db_escola_T;
GO

USE db_escola_T;
GO

CREATE TABLE tb_usuario(
	id			INT				IDENTITY(1, 1) PRIMARY KEY,
	nome		NVARCHAR(255)	NOT NULL,
	usuario	    NVARCHAR(255)	NOT NULL,
	email 	    NVARCHAR(255)	NOT NULL,
	senha       NVARCHAR(255)	NOT NULL,
	perfil      NVARCHAR(255)   NULL,
);
GO

SELECT * FROM tb_usuario;

CREATE TABLE tb_publicacao(
	id			    INT				IDENTITY(1, 1) PRIMARY KEY,
	usuario         INT             NOT NULL,
	descricao       NVARCHAR(255)   NULL,
	imagemURL       NVARCHAR(150)   NULL,
	dataPublicacao  DATETIME        NOT NULL,

	id_escola	INT	FOREIGN KEY REFERENCES tb_escola(id)

);
GO

SELECT * FROM tb_publicacao;

CREATE TABLE tb_curtida(
id			    INT				IDENTITY(1, 1) PRIMARY KEY,
usuario         INT             NOT NULL,
publicacao      INT             NOT NULL,
);

SELECT * FROM tb_curtida;

CREATE TABLE tb_comentario(
id			    INT				IDENTITY(1, 1) PRIMARY KEY,
usuario         INT             NOT NULL,
publicacao      INT             NOT NULL,
texto           NVARCHAR(MAX)   NOT NULL,
datacomentario  DATETIME        NOT NULL,
);

SELECT * FROM tb_comentario;

CREATE TABLE tb_seguidor(
id			    INT				IDENTITY(1, 1) PRIMARY KEY,
id_usuario      INT             NOT NULL,
id_seguidor     INT             NOT NULL,

PRIMARY KEY(id_usuario, id_seguidor)
);
SELECT * FROM tb_usuario_seguidor;


