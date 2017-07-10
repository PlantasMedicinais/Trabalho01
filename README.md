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
https://github.com/PlantasMedicinais/Trabalho01/blob/master/ModeloConceitual.brM
![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/Print%20Conceitual.png?raw=true "Title")

  
#### 5.1 Validação do Modelo Conceitual
    SAE: Thaynara
    SEBO PLUS: Emanoele

#### 5.2 DECISÕES DE PROJETO
a)CEP: Foi colocado como composto porque entende-se que "CEP" abranja informações como rua, bairro, cidade e unidade federativa. Então,   assim que inserido o cep no sistema, automaticamente seriam inseridas as informações que o compõe.

b)Endereço: Foi colocado como composto porque entende-se que "Endereço" abranja o CEP e todas as suas composições, o número e o           complemento.

#### 5.3 DESCRIÇÃO DOS DADOS 
Usuário: Tabela que armazena as informações do usuário;

id_usuario: código que torna cada usuário único (chave primária);

data nasc.: campo que armazena a data de nascimento de cada usuário;

nome completo: campo que armazena o nome completo do usuário;

username: campo que armazena o username do usuário;

passw: campo que armazena a senha do usuário;

endereço: campo que armazena o cep, número e complemento do endereço do usuário;

cep: campo que armazena o cep do usuário;

número: campo que armazena o número da residência do usuário;

complemento: campo que armazena, se existir, o complemento da residência do usuário;


Estado: Tabela que armazena infromações do estado onde o usuário reside.

id_estado: campo que armazena o código do estado;

descricao: campo que armazena o nome do estado;

Cidade: Tabela que armazena informações da cidade onde o usuário reside.

id_cidade: campo que armazena o código da cidade;

descricao: campo que armazena o nome da cidade;

Bairro: Tabela que armazena informações do bairro onde o usuário reside.

id_bairro: campo que armazena o código do bairro;

descricao: campo que armazena o nome do bairro;

Tipo_Usuario: Tabela que armazena informações do tipo de usuário.

id_tipo_usuario: campo que armazena o código da tipo de usuário;

descricao: campo que armazena se o usuário é administrador ou usuário comum;

Contato: Tabela que armazena informações de contato;

id_contato: campo que armazena o código do contato;

descricao: campo que armazena os contatos do usuário;

Tipo_Contato: tabela que armazena informações dos tipos de contato;

id_tipo_contato: campo que armazena o código do tipo de contato;

descricao: campo que armazena o tipo de contato do usuário(email, telefone fixo, celular, etc)

Planta: tabela que armazena informações sobre as plantas;

id_planta: campo que armazena o código da planta;

tamanho_aprox: campo que armazena o tamanho aproximado da planta;

Nome_Popular: tabela que armazena informações sobre o nome popular da planta;

id_nome_popular: campo que armazena o código do nome popular da planta;

descricao: campo que armazena o(s) nome(s) popular(es) da planta;

Cor_Folha: tabela que armazena informações sobre a cor das folhas da planta;

id_cor_da_folha: camp que armazena o código da cor da folha;

descricao: campo que armazena a cor da folha;

Tamanho_Folha: tabela que armazena informações do tamanho da folha;

id_tamanho: camp que armazena o código do tamanho da folha;

descricao: campo que armazena o tamanho da folha;

Textura_Folha: tabela que armazena informações sobre a textura das folhas da planta;

id_textura: campo que armazena o código da textura da planta;

descricao: campo que armazena o nome da textura da planta;

Local: tabela que armazena informações sobre o local onde a planta é encontrada;

lat: campo que armazena a latitude da localização da planta;

longi: campo que armazena a longitude da localização da planta;

Tipo_Planta: tabela que armazena infromações sobre o tipo da planta;

id: campo que armazena o código do tipo da planta;

nome: nome do tipo de planta (briofita, angiosperma, etc);

detalhamento: campo que armazena os detalhes dos tipo de planta (monocotiledônea, dicotiledônea)

Receita: tabela que armazena informações sobre as receitas da planta;

id_receita: campo que armazena o código de receita da planta;

descricao: campo que armazena as receitas da planta (como fazer o chá, como fazer o banho, etc);

Modo_de_Uso: tabela que armazena informações sobre o modo de uso da planta;

id_mododeuso: campo que armazena o código do modo de uso;

descricao: campo que armazena os tipode modo e uso da planta(chá, banho, etc).




### 6	MODELO LÓGICO<br>
https://github.com/PlantasMedicinais/Trabalho01/blob/master/LOGICO_1.brM
![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/Print%20L%C3%B3gico.png?raw=true "Title")

### 7	MODELO FÍSICO<br>

https://github.com/PlantasMedicinais/Trabalho01/blob/master/F%C3%ADsico.sql


### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>

https://github.com/PlantasMedicinais/Trabalho01/blob/master/SCRIPT.sql

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

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/1.png?raw=true "Title")

select id_contato,descricao,id_usuario,id_tipodecontato from contato;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/2.png?raw=true "Title")

select id_tipodecontato,descricao form tipo_contato;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/3.png?raw=true "Title")

select descricao,id_cor_da_folha form cor_folha;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/4.png?raw=true "Title")

select id_estado,descricao from estado;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/5.png?raw=true "Title")

select longi,lat,id_planta from localidade;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/6.png?raw=true "Title")


select id_mododeuso, descricao from modo_de_uso;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/7.png?raw=true "Title")

select id_bairro, descricao from bairro;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/8.png?raw=true "Title")

select descricao, id_nome_popular, id_planta from nome_popular;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/9.png?raw=true "Title")

select textura_folha, foto, tipo_folha, modo_de_uso, indicacoes, nome_cientifico, id_usuario, id, id_textura from planta;


![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/10.png?raw=true "Title")

select id_receita, descricao from receita;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/11.png?raw=true "Title")

select id_tamanho, descricao from tamanho_folha;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/12.png?raw=true "Title")

select descricao, id_textura from textura_folha;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/13.png?raw=true "Title")

select descricao, id_tipodecontato from tipo_contato;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/14.png?raw=true "Title")


select detalhamento, nome, id from tipo_planta;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/15.png?raw=true "Title")

select id_tipo_usuario, descricao from tipo_usuario;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/16.png?raw=true "Title")

select data_nasc, id_usuario, passw, username, id_tipo_usuario from usuario;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/17.png?raw=true "Title")

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

select * from usuario where cidade = 'vila velha'

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/18.png?raw=true "Title")

select * from usuario where estado = 'ES'


![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/19.png?raw=true "Title")

select * from planta where tipo_folha = 'grande'

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/20.png?raw=true "Title")

select * from textura_folha where descricao = 'lisa'

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/21.png?raw=true "Title")

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>
select Nome_Completo, id_usuario from usuario 
where id_usuario > 12;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print1.png?raw=true "Title")

select Complemento, Nome_Completo, Bairro from usuario
where id_usuario > 3 and Bairro != 'Novo Horizonte';

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print2.png?raw=true "Title")

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
select Nome_Completo, username from usuario 
where username like 'w%';

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print3.png?raw=true "Title")

select Nome_Completo, id_usuario from usuario
where Nome_Completo like 's%' and id_usuario > 9;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print4.png?raw=true "Title")

select Nome_Completo, Cidade from usuario
where Cidade like '_e%';

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print5.png?raw=true "Title")

#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
update usuario set Data_Nasc = '1992-11-25' where id_usuario = 10;
select nome_Completo, Data_Nasc, id_usuario from usuario;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print6.png?raw=true "Title")

update usuario set username = 'bibi02' where id_usuario = 11;
select nome_Completo, username, id_usuario from  usuario;


![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print7.png?raw=true "Title")

update planta set textura_folha = 'áspera' where id_planta = 2;
select Nome_Cientifico, id_planta, textura_folha from planta;


![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print8.png?raw=true "Title")

delete from usuario where id_usuario >13;
select id_usuario, nome_Completo from usuario;


![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print9.png?raw=true "Title")

delete from planta where id_planta >= 3;
select Nome_Cientifico, tamanho_aprox, id_planta from planta;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print10.png?raw=true "Title")

delete from bairro where id_bairro = 50;
select * from bairro;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print11.png?raw=true "Title")


#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
select Nome_Cientifico, id_planta, textura_folha from planta
group by textura_folha;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print12.png?raw=true "Title")       

select Nome_Completo, id_usuario from usuario
group by Nome_Completo;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print13.png?raw=true "Title")

select Data_Nasc, Nome_Completo from usuario 
group by Data_Nasc having Data_Nasc != '2000-11-25';

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print14.png?raw=true "Title")

select Data_Nasc, Nome_Completo from usuario 
group by Data_Nasc;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print15.png?raw=true "Title")

select Rua, Nome_Completo from usuario
group by Data_Nasc;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print16.png?raw=true "Title")

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
select Nome_Completo, Data_Nasc, tipo_usuario.Descricao from tipo_usuario
right outer join usuario on(usuario.id_usuario = tipo_usuario.id_tipo_usuario); 

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print17.png?raw=true "Title")

select descricao, usuario.Nome_Completo, usuario.Data_Nasc from usuario
right join tipo_usuario on(tipo_usuario.id_tipo_usuario = usuario.id_usuario);

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print18.png?raw=true "Title")

select passw, Nome_Completo, planta.textura_folha from planta
left join usuario on(usuario.id_usuario = planta.id_planta);

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print19.png?raw=true "Title")

select usuario.passw, usuario.Nome_Completo, textura_folha from usuario
left join planta on(planta.id_planta = usuario.id_usuario);

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print20.png?raw=true "Title")

#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>

select usuario.Nome_Completo, bairro.descricao from usuario join bairro on (usuario.id_usuario = bairro.id_bairro)

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print24.png?raw=true "Title")

create view verlocalidadeusuario as select cidade, bairro, rua, estado from usuario;
select * from verlocalidadeusuario;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print26.png?raw=true "Title")

create view planta1 as select id_planta, tamanho_aprox, tipo_folha from planta;
select * from planta1;

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print27.png?raw=true "Title")


#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
select Nome_Completo, Bairro, Rua from usuario 
where Bairro in(select Bairro from usuario where Bairro != 'Cocal');

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print21.png?raw=true "Title")

select Nome_Completo, Data_Nasc from usuario
where Nome_Completo in(select Nome_Completo from usuario where Nome_Completo like 'Sabrina%');

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print22.png?raw=true "Title")

select id_planta, Nome_Cientifico, textura_folha from planta
where textura_folha in(select textura_folha from planta where id_Planta < 3);

![Alt text](https://github.com/PlantasMedicinais/Trabalho01/blob/master/print23.png?raw=true "Title")

### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

Nosso grupo, em toda execução do trabalho, encontrou dificuldades em executar o tópico relacionado à subconsultas.
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
:+1:
