-- Criar banco
CREATE DATABASE db_devconnect;
GO

USE db_devconnect;
GO

-- Tabela de usuários
CREATE TABLE N_usuario (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nome_completo NVARCHAR(255) NOT NULL,
    nome_usuario NVARCHAR(50) UNIQUE NOT NULL,
    email NVARCHAR(255) UNIQUE NOT NULL,
    senha NVARCHAR(50) NOT NULL,
    foto_perfil_url NVARCHAR(150) NULL
);
GO

-- Tabela de publicações
CREATE TABLE publicacao(
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    descricao NVARCHAR(100) NULL,
    imagem_url NVARCHAR(100) NULL,
    data_publicacao DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id)
);
GO

-- Tabela de comentários
CREATE TABLE comentario(
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_publicacao INT NOT NULL,
    texto NVARCHAR(100) NOT NULL,
    data_comentario DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),
    FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);
GO

-- Tabela de curtidas
CREATE TABLE curtida(
    id INT IDENTITY(1,1) PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_publicacao INT NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES tb_usuario(id),
    FOREIGN KEY (id_publicacao) REFERENCES tb_publicacao(id)
);
GO

-- Tabela de seguidores
CREATE TABLE seguidor(
    id_usuario_seguir INT NOT NULL,
    id_usuario_seguida INT NOT NULL,
    PRIMARY KEY(id_usuario_seguir, id_usuario_seguida),
    FOREIGN KEY (id_usuario_seguir) REFERENCES tb_usuario(id),
    FOREIGN KEY (id_usuario_seguida) REFERENCES tb_usuario(id)
);
GO
