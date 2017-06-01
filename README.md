# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1.COMPONENTES<br>
Gabriel Plotegher de Novaes e Sabrina de Barros Leal<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
No projeto Plantas Medicinais, criaremos um banco de dados onde será armazenado informações sobre o mesmo. O projeto visa ajudar pessoas que estão à procura de plantas específicas. Com o grande mercado de plantas que "curam" crescendo, decidimos criar esse projeto motivados a ajudar pessoas que necessitem de certas plantas para curar ou minimizar enfermidades. <br>

### 3.MINI-MUNDO<br>
O projeto Plantas Medicinais oferece acesso à localidade de plantas que "curam", através da informação de localização que é cadastrada pelo administrador ou usuário no ato do cadastro da planta medicinal. O usuário não pode cadastrar a planta diretamente, as informações que são fornecidas por ele deverão ser mandadas para análise do administrador para que o mesmo certifique as informações.
Para que o usuário tenha acesso ao site onde poderá, também, procurar plantas das quais possua interesse, é necessário que ele faça um cadastro. Após o cadastro, o usuário terá acesso à sua página de perfil no site após a inserção do login de acesso. O mesmo vale para o administrador.
O administrador tem acesso direto ao cadastro de plantas e, assim como o usuário, à procura de plantas do seu interesse.<br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
(https://github.com/PlantasMedicinais/Trabalho01/blob/master/Medicina.pdf)


### 5.MODELO CONCEITUAL<br>
https://github.com/PlantasMedicinais/Trabalho01/blob/master/PlantasMedicinaisATUALIZADASSO.brM
https://github.com/PlantasMedicinais/Trabalho01/blob/master/print%20bd%20conceitual.png
  
#### 5.1 Validação do Modelo Conceitual
    SAE: Thaynara
    SEBO PLUS: Emanoele

#### 5.2 DECISÕES DE PROJETO
a)CEP: Foi colocado como composto porque entende-se que "CEP" abranja informações como rua, bairro, cidade e unidade federativa. Então,   assim que inserido o cep no sistema, automaticamente seriam inseridas as informações que o compõe.

b)Endereço: Foi colocado como composto porque entende-se que "Endereço" abranja o CEP e todas as suas composições, o número e o           complemento.

#### 5.3 DESCRIÇÃO DOS DADOS 
Usuário: Tabela que armazena as informações do usuário.

Local: Tabela que armazena informações do edereço do usuário.

Localidade: Tabela que armazena informações da localidade da planta.

Tipos: Tabela que armazena informações dos tipos das plantas.

Planta: Tabela que armazena informações das plantas.

### 6	MODELO LÓGICO<br>
https://github.com/PlantasMedicinais/Trabalho01/blob/master/ModeloLogicoBDAtualizado.brM
https://github.com/PlantasMedicinais/Trabalho01/blob/master/printatualizadologico.png

### 7	MODELO FÍSICO<br>

https://github.com/PlantasMedicinais/Trabalho01/blob/master/ModeloFisicoBD.sql

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

       
        
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

https://github.com/PlantasMedicinais/Trabalho01/blob/master/Comandos%20Insert%2C%20bd.txt

#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
.
        a) obtenção dos dados
Imagens do google e Criando aleatórios.
        b) obtenção de códigos reutilizados
Não reutilizamos códigos.
        c) fontes de estudo para desenvolvimento do projeto
https://elias.praciano.com/2013/02/mysql-comandos-basicos/ e Lista de exercicios moodle.
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
.
        a) inclusão das instruções para criação das tabelas e estruturas de amazenamento do BD:
        Incluso no item 7 deste documento.
        
        b) inclusão das instruções de inserção dos dados nas referidas tabelas
        Incluso no item 8 deste documento.
        
        c) inclusão das instruções para execução de outros procedimentos necessários:
        Não utilizamos outros procedimentos.

        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

select id_cidade,descricao from cidade;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/1.png
select id_contato,descricao,id_usuario,id_tipodecontato from contato;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/2.png
select id_tipodecontato,descricao form tipo_contato;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/3.png
select descricao,id_cor_da_folha form cor_folha;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/4.png
select id_estado,descricao from estado;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/5.png
select longi,lat,id_planta from localidade;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/6.png
select id_mododeuso, descricao from modo_de_uso;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/7.png
select id_bairro, descricao from bairro;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/8.png
select descricao, id_nome_popular, id_planta from nome_popular;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/9.png
select textura_folha, foto, tipo_folha, modo_de_uso, indicacoes, nome_cientifico, id_usuario, id, id_textura from planta;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/10.png
select id_receita, descricao from receita;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/11.png
select id_tamanho, descricao from tamanho_folha;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/12.png
select descricao, id_textura from textura_folha;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/13.png
select descricao, id_tipodecontato from tipo_contato;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/14.png
select detalhamento, nome, id from tipo_planta;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/15.png
select id_tipo_usuario, descricao from tipo_usuario;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/16.png
select data_nasc, id_usuario, passw, username, id_tipo_usuario from usuario;
https://github.com/PlantasMedicinais/Trabalho01/blob/master/17.png

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

select*from usuario where cidade = 'vila velha'
https://github.com/PlantasMedicinais/Trabalho01/blob/master/18.png
select*from usuario where estado = 'ES'
https://github.com/PlantasMedicinais/Trabalho01/blob/master/19.png
https://github.com/PlantasMedicinais/Trabalho01/blob/master/20.png
select*from textura_folha where descricao = 'lisa'
https://github.com/PlantasMedicinais/Trabalho01/blob/master/21.png

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
        Entrega até este ponto em (data a ser definida)
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
