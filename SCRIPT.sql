insert into bairro values('10','Cocal'),('20','Jacaraípe'),('30','Laranjeiras'),('40','Manguinhos'),('50','Ibes');



insert into cidade values('1','Vila Velha'),('2','Vitória'),('3','Serra'),('4','Guaraparí'),('5','Cariacica');

insert into contato(id_contato,descricao)

values('99','32254168'),('98', 'gabriel.zikah@hotmail.com'),('97', '32245867'), ('96', 'sabrinadebarrosleal2011'), ('95', '988475236');




insert into cor_folha values('vermelha','1'), ('verde','2'), ('amarela','3'), ('roxa','4'), ('alaranjada','5');


insert into estado values('15','ES'),('16','RJ'),('17','SP'),('18','MG'),('19','GO');

insert into localidade(longi, lat)
values('21.4744381','-40.4145753'),('22.1594763','-40.2545486'),('23.3625158','-40.6969854'),('24.1215794','-39.2547158'),('25.9993147','-40.2525478');

insert into modo_de_uso values('88','Chá, Banho'),('89','Chá'),('90','Banho, Gargarejo'),('91','Borrifar, Gargarejo'),('92','Borrifar, Banho, Gargarejo, Chá');

insert into nome_popular(descricao, id_nome_popular)
values('Cidreira', '1'),('Samabaia','2'),('Aloe vera', '3'), ('Areca-bambu','4'), ('Peperonia verde', '5');

insert into planta(id_planta, tamanho_aprox, textura_folha, foto, tipo_folha, modo_de_uso, nome_cientifico)
values('1', '1', 'Aspera', 'GOOGLE', 'Grande', 'Chá', 'Eucalyptus globulus'), ('2', '3', 'Lisa', 'GOOGLE', 'Média', 'Chá, Gargarejo, Banho', 'Plectranthus barbatus Andr'), ('3', '5', '"Empoeirada"', 'GOOGLE', 'Grande', 'Chá, Gargarejo', 'Salvia officinalis'), ('4', '1', 'Aspera', 'GOOGLE', 'Grande', 'Chá, Gargarejo', 'Peumus boldo Molina'), ('5', '2', 'Rugosa', 'GOOGLE', 'pequena', 'Gargarejo', 'Cymbopogon citratus Stapf');

insert into receita values('14', 'Xarope de Melissa (erva Cidreira)'), ('15', 'Chá de Erva Doce'), ('16', 'Chá de camomila'), ('17', 'Pomada milagrosa(Tansagem, Confrei, Mil em ramas, Duas flores de calêndula, babosa, Uma folha de bardana'), ('18', 'Chá de laranja e camomila');

insert into tamanho_folha values('10', 'Grande'), ('20', 'Pequena'),('30','Média'),('40','Pequena'),('50','Média');

insert into textura_folha values('Rugosa','1'),('Lisa', '2'),('Rugosa"', '3'),('Lisa', '4'),('Aspera, seca','5');

insert into tipo_contato values('77', 'Email'), ('78', 'Fixo'), ('79', 'Celular'), ('80', 'Email'), ('81', 'Fax');

insert into tipo_planta values('1', 'Briofita', 'Planta de pequeno porte'), ('2', 'Pteridófita', 'Planta de porte médio'), ('3', 'Angiosperma', 'Planta de porte grande'), ('4', 'Gimnosperma', 'Porte médio à grande'), ('5', 'Gramíneas', 'Porte pequeno');

insert into tipo_usuario values('1', 'Administrador'), ('2', 'Moderador'), ('3', 'Usuário');

alter table usuario change Data_Nasc Data_nasc date;

insert into usuario(Nome_Completo, Data_nasc, id_usuario, complemento, cidade, bairro, rua, estado, número, passw, username)
values('Gabriel Plotegher de Novaes', '1997/05/16', '10', 'andar 1', 'Vila Velha', 'Cocal', 'Oito', 'ES', '204', '123452', 'Warkevon'), ('Sabrina de Barros Leal', '2000/11/25', '11', 'andar 3', 'Serra', 'Novo Horizonte', 'Quatorze', 'ES', '26', '123456', 'Refulgiu'),('Pedro Bandeira', '1980/01/20', '12', 'Ao lado do franguinho', 'Vila Velha', 'Santa Inês', 'Doze', 'ES', '14', '998574', 'Pedraoboladao'), ('Marcelo Meireles', '1994/07/12', '13', 'andar 7', 'Guarapari', 'Sao Benedito', 'Quarente e seis', 'ES', '07', 'Mauricio24', 'Mauricinho1010'), ('Paula Tejando', '1920/06/11', '14', 'Casa branca', 'Cariacica', 'Sao Conrrado', 'Rua das ostras', 'ES', '997', '5547478maepai', 'Paulatejando');




