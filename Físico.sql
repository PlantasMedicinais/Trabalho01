-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE NOME_POPULAR (
descricao VARCHAR(255),
id_nome_popular INTEGER PRIMARY KEY,
id_planta INTEGER
)

CREATE TABLE LOCAL (
longi INTEGER,
lat INTEGER,
id_planta INTEGER,
PRIMARY KEY(longi,lat)
)

CREATE TABLE COR_FOLHA (
descricao VARCHAR(255),
id_cor_da_folha INTEGER PRIMARY KEY
)

CREATE TABLE PLANTA (
id_planta INTEGER PRIMARY KEY,
tamanho_aprox VARCHAR(255),
foto VARCHAR(255),
Indicacoes VARCHAR(255),
Nome Cientifico VARCHAR(255),
id_usuario INTEGER,
id INTEGER,
id_textura INTEGER
)

CREATE TABLE TAMANHO_FOLHA (
id_tamanho INTEGER PRIMARY KEY,
descricao VARCHAR(255)
)

CREATE TABLE TEXTURA_FOLHA (
descricao VARCHAR(255),
id_textura INTEGER PRIMARY KEY
)

CREATE TABLE RECEITA (
id_receita INTEGER PRIMARY KEY,
descricao VARCHAR(255)
)

CREATE TABLE MODO_DE_USO (
id_mododeuso INTEGER PRIMARY KEY,
descricao VARCHAR(255)
)

CREATE TABLE TIPO_CONTATO (
id_tipodecontato INTEGER PRIMARY KEY,
descricao VARCHAR(255)
)

CREATE TABLE CONTATO (
id_contato INTEGER PRIMARY KEY,
descricao VARCHAR(255),
id_usuario INTEGER,
id_tipodecontato INTEGER,
FOREIGN KEY(id_tipodecontato) REFERENCES TIPO_CONTATO (id_tipodecontato)
)

CREATE TABLE TIPO_USUARIO (
id_tipo_usuario INTEGER PRIMARY KEY,
Descricao VARCHAR(255)
)

CREATE TABLE ESTADO (
id_estado INTEGER PRIMARY KEY,
Descricao VARCHAR(255)
)

CREATE TABLE CIDADE (
id_cidade INTEGER PRIMARY KEY,
Descricao VARCHAR(255)
)

CREATE TABLE TIPO_PLANTA (
id INTEGER PRIMARY KEY,
nome VARCHAR(255),
detalhamento VARCHAR(255)
)

CREATE TABLE USUARIO (
Nome Completo VARCHAR(255),
Data Nasc. DATETIME,
id_usuario INTEGER PRIMARY KEY,
Complemento VARCHAR(255),
Rua VARCHAR(255),
Número INTEGER,
passw VARCHAR(255),
username VARCHAR(255),
id_tipo_usuario INTEGER,
FOREIGN KEY(id_tipo_usuario) REFERENCES TIPO_USUARIO (id_tipo_usuario)
)

CREATE TABLE BAIRRO (
id_bairro INTEGER PRIMARY KEY,
Descricao VARCHAR(255)
)

CREATE TABLE cidade_estado (
id_estado INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_estado) REFERENCES ESTADO (id_estado),
FOREIGN KEY(id_cidade) REFERENCES CIDADE (id_cidade)
)

CREATE TABLE Avalia (
id_usuario INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario),
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE Planta_receita (
id_receita INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_receita) REFERENCES RECEITA (id_receita),
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE Planta_mododeuso (
id_mododeuso INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_mododeuso) REFERENCES MODO_DE_USO (id_mododeuso),
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE Planta_tamanhofolha (
id_tamanho INTEGER,
id_planta INTEGER,
FOREIGN KEY(id_tamanho) REFERENCES TAMANHO_FOLHA (id_tamanho),
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
)

CREATE TABLE Planta_cordafolha (
id_planta INTEGER,
id_cor_da_folha INTEGER,
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta),
FOREIGN KEY(id_cor_da_folha) REFERENCES COR_FOLHA (id_cor_da_folha)
)

CREATE TABLE Procura (
id_planta INTEGER,
id_usuario INTEGER,
FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta),
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
)

CREATE TABLE Cidade_bairro (
id_bairro INTEGER,
id_cidade INTEGER,
FOREIGN KEY(id_bairro) REFERENCES BAIRRO (id_bairro),
FOREIGN KEY(id_cidade) REFERENCES CIDADE (id_cidade)
)

CREATE TABLE reside (
id_bairro INTEGER,
id_usuario INTEGER,
FOREIGN KEY(id_bairro) REFERENCES BAIRRO (id_bairro),
FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
)

ALTER TABLE NOME_POPULAR ADD FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
ALTER TABLE LOCAL ADD FOREIGN KEY(id_planta) REFERENCES PLANTA (id_planta)
ALTER TABLE PLANTA ADD FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
ALTER TABLE PLANTA ADD FOREIGN KEY(id) REFERENCES TIPO_PLANTA (id)
ALTER TABLE PLANTA ADD FOREIGN KEY(id_textura) REFERENCES TEXTURA_FOLHA (id_textura)
ALTER TABLE CONTATO ADD FOREIGN KEY(id_usuario) REFERENCES USUARIO (id_usuario)
