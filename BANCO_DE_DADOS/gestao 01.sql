Use master
GO

DROP DATABASE GESTAO
GO

CREATE DATABASE GESTAO
GO






use GESTAO



CREATE TABLE GrupoUsuario(
id_GrupoUsuario INT NOT NULL PRIMARY KEY,
Permissoes INT NOT NULL
)



CREATE TABLE Usuario(
id_Usuario INT NOT NULL PRIMARY KEY IDENTITY(1,1),
nome VARCHAR (100)NOT NULL,
nome_Usuario VARCHAR (20) NOT NULL,
data_Nascimento VARCHAR (10) NOT NULL,
cpf_Usuario VARCHAR (11) NOT NULL UNIQUE,
senha VARCHAR (20) NOT NULL UNIQUE,
email VARCHAR (100) NOT NULL,
ativo BIT NOT NULL,

)

CREATE TABLE Permissao(
id_Permissao INT NOT NULL PRIMARY KEY,
Descricao VARCHAR (150) NOT NULL,
)


CREATE TABLE Grupo_com_Usuario_N_N(
cod_usuario INT NOT NULL,
cod_GrupoUsuario INT NOT NULL,
CONSTRAINT fk_com_usuario FOREIGN KEY (cod_usuario) REFERENCES Usuario (id_Usuario),
CONSTRAINT fk_com_grupo FOREIGN KEY (cod_GrupoUsuario) REFERENCES GrupoUsuario (id_GrupoUsuario),
)

CREATE TABLE Permissao_com_Grupo(
cod_Permissao INT NOT NULL,
cod_GrupoUsuario INT NOT NULL,
CONSTRAINT fk_permissao FOREIGN KEY (cod_Permissao) REFERENCES Permissao(id_Permissao),
CONSTRAINT fk_grupousuario FOREIGN KEY (cod_GrupoUsuario) REFERENCES GrupoUsuario(id_GrupoUsuario)
)

