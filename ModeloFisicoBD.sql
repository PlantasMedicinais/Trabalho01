-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE ESTADO (
id_estado INTEGER PRIMARY KEY,
descricao VARCHAR(2)
)

CREATE TABLE cidade_estado (
id_estado INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_estado) REFERENCES ESTADO (id_estado)
)

CREATE TABLE Cidade_bairro (
id_bairro INTEGER,
id_cidade INTEGER
)

CREATE TABLE USUARIO (
Nome Completo VARCHAR(45),
Data Nasc. DATE,
id_usuario INTEGER PRIMARY KEY,
Complemento VARCHAR(45),
Cidade VARCHAR(45),
Bairro VARCHAR(45),
Rua VARCHAR(45),
Estado VARCHAR(2),
Número INTEGER,
passw VARCHAR(255),
username VARCHAR(45),
id_tipo_usuario INTEGER
)

CREATE TABLE Reside (
id_usuario INTEGER,
id_estado INTEGER,
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario),
FOREIGN KEY(id_estado) REFERENCES ESTADO (id_estado)
)

CREATE TABLE CONTATO (
id_contato INTEGER PRIMARY KEY,
descricao VARCHAR(45),
id_usuario INTEGER,
id_tipodecontato INTEGER,
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
)

CREATE TABLE TIPO_CONTATO (
id_tipodecontato INTEGER PRIMARY KEY,
descricao VARCHAR(10)
)

CREATE TABLE Avalia (
id_usuario INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
)

CREATE TABLE CIDADE (
id_cidade INTEGER PRIMARY KEY,
Descricao VARCHAR(45)
)

CREATE TABLE PLANTA (
id_planta INTEGER PRIMARY KEY,
tamanho_aprox INTEGER,
textura_folha VARCHAR(45),
foto VARCHAR(10),
tipo_folha VARCHAR(20),
Modo de Uso VARCHAR(255),
Indicacoes VARCHAR(255),
Nome Cientifico VARCHAR(45),
id_usuario INTEGER,
id INTEGER,
id_textura INTEGER,
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
)

CREATE TABLE NOME_POPULAR (
descricao VARCHAR(45),
id_nome_popular INTEGER PRIMARY KEY,
id_planta INTEGER,
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE COR_FOLHA (
descricao VARCHAR(25),
id_cor_da_folha INTEGER PRIMARY KEY
)

CREATE TABLE Planta_cordafolha (
id_planta INTEGER,
id_cor_da_folha INTEGER,
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta),
FOREIGN KEY(id_cor_da_folha) REFERENCES COR_FOLHA (id_cor_da_folha)
)

CREATE TABLE LOCAL (
long INTEGER,
lat INTEGER,
id_planta INTEGER,
PRIMARY KEY(long,lat),
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE TIPO_PLANTA (
id INTEGER PRIMARY KEY,
nome VARCHAR(45),
detalhamento VARCHAR(45)
)

CREATE TABLE MODO_DE_USO (
id_mododeuso INTEGER PRIMARY KEY,
descricao VARCHAR(255)
)

CREATE TABLE Planta_receita (
id_receita INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE TAMANHO_FOLHA (
id_tamanho INTEGER PRIMARY KEY,
descricao VARCHAR(7)
)

CREATE TABLE Planta_tamanhofolha (
id_tamanho INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_tamanho) REFERENCES TAMANHO_FOLHA (id_tamanho),
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE TEXTURA_FOLHA (
descricao VARCHAR(15),
id_textura INTEGER PRIMARY KEY
)

CREATE TABLE Planta_mododeuso (
id_mododeuso INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_mododeuso) REFERENCES MODO_DE_USO (id_mododeuso),
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE RECEITA (
id_receita INTEGER PRIMARY KEY,
descricao VARCHAR(255)
)

CREATE TABLE Procura (
id_planta INTEGER,
id_usuario INTEGER,
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta),
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
)

CREATE TABLE TIPO_USUARIO (
id_tipo_usuario INTEGER PRIMARY KEY,
Descricao VARCHAR(13)
)

CREATE TABLE BAIRRO (
id_bairro INTEGER PRIMARY KEY,
Descricao VARCHAR(25)
)

ALTER TABLE cidade_estado ADD FOREIGN KEY(id_cidade) REFERENCES CIDADE (id_cidade)
ALTER TABLE Cidade_bairro ADD FOREIGN KEY(id_bairro) REFERENCES BAIRRO (id_bairro)
ALTER TABLE Cidade_bairro ADD FOREIGN KEY(id_cidade) REFERENCES CIDADE (id_cidade)
ALTER TABLE USUARIO ADD FOREIGN KEY(id_tipo_usuario) REFERENCES TIPO_USUARIO (id_tipo_usuario)
ALTER TABLE CONTATO ADD FOREIGN KEY(id_tipodecontato) REFERENCES TIPO_CONTATO (id_tipodecontato)
ALTER TABLE Avalia ADD FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
ALTER TABLE PLANTA ADD FOREIGN KEY(id) REFERENCES TIPO_PLANTA (id)
ALTER TABLE PLANTA ADD FOREIGN KEY(id_textura) REFERENCES TEXTURA_FOLHA (id_textura)
ALTER TABLE Planta_receita ADD FOREIGN KEY(id_receita) REFERENCES RECEITA (id_receita)
