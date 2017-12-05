/* Modelo_Lógico: */

DROP DATABASE IF EXISTS PRECOBAIXO;

CREATE DATABASE PRECOBAIXO;

USE PRECOBAIXO;

CREATE TABLE USUARIO (
    cod_usuario INT PRIMARY KEY,
    nome varchar(100),
    login varchar(15),
    passwd varchar(8),
    email varchar(100)
);

CREATE TABLE PRODUTO (
    id_produto INT PRIMARY KEY,
    nome varchar(100),
    preco FLOAT
);

CREATE TABLE UN_MEDIDA (
    id_un_medida INT PRIMARY KEY,
    tipo varchar(100)
);

CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY,
    nome varchar(100)
);

CREATE TABLE IMAGEM (
    id_imagem INT PRIMARY KEY,
    link varchar(100)
);

CREATE TABLE SUPERMERCADO (
    id_supermercado INT PRIMARY KEY,
    nome varchar(100)
);

CREATE TABLE CIDADE (
    id_cidade INT PRIMARY KEY,
    nome varchar(100)
);

CREATE TABLE BAIRRO (
    id_bairro INT PRIMARY KEY,
    nome varchar(100)
);

CREATE TABLE TAG (
    id_tag INT PRIMARY KEY,
    nome varchar(100)
);

CREATE TABLE ENDERECO (
    id_endereco INT PRIMARY KEY,
    numero INT,
    logradouro varchar(15)
);

CREATE TABLE PUBLICA (
    FK_USUARIO_cod_usuario INT,
    FK_PRODUTO_id_produto INT
);

CREATE TABLE POSSUI (
    FK_UN_MEDIDA_id_un_medida INT,
    FK_PRODUTO_id_produto INT
);

CREATE TABLE PERTENCE (
    FK_CATEGORIA_id_categoria INT,
    FK_PRODUTO_id_produto INT
);

CREATE TABLE CONTEM (
    FK_IMAGEM_id_imagem INT,
    FK_PRODUTO_id_produto INT
);

CREATE TABLE TEM (
    FK_IMAGEM_id_imagem INT,
    FK_USUARIO_cod_usuario INT
);

CREATE TABLE END_SUPER (
    FK_ENDERECO_id_endereco INT,
    FK_SUPERMERCADO_id_supermercado INT
);

CREATE TABLE CID_BAI (
    FK_CIDADE_id_cidade INT,
    FK_BAIRRO_id_bairro INT
);

CREATE TABLE PROD_TAG (
    FK_PRODUTO_id_produto INT,
    FK_TAG_id_tag INT
);

CREATE TABLE BAI_END (
    FK_BAIRRO_id_bairro INT,
    FK_ENDERECO_id_endereco INT
);

CREATE TABLE ESTA (
    FK_PRODUTO_id_produto INT,
    FK_SUPERMERCADO_id_supermercado INT
);
 
ALTER TABLE PUBLICA ADD CONSTRAINT FK_PUBLICA_0
    FOREIGN KEY (FK_USUARIO_cod_usuario)
    REFERENCES USUARIO (cod_usuario);
 
ALTER TABLE PUBLICA ADD CONSTRAINT FK_PUBLICA_1
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_0
    FOREIGN KEY (FK_UN_MEDIDA_id_un_medida)
    REFERENCES UN_MEDIDA (id_un_medida);
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_1
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE PERTENCE ADD CONSTRAINT FK_PERTENCE_0
    FOREIGN KEY (FK_CATEGORIA_id_categoria)
    REFERENCES CATEGORIA (id_categoria);
 
ALTER TABLE PERTENCE ADD CONSTRAINT FK_PERTENCE_1
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE CONTEM ADD CONSTRAINT FK_CONTEM_0
    FOREIGN KEY (FK_IMAGEM_id_imagem)
    REFERENCES IMAGEM (id_imagem);
 
ALTER TABLE CONTEM ADD CONSTRAINT FK_CONTEM_1
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE TEM ADD CONSTRAINT FK_TEM_0
    FOREIGN KEY (FK_IMAGEM_id_imagem)
    REFERENCES IMAGEM (id_imagem);
 
ALTER TABLE TEM ADD CONSTRAINT FK_TEM_1
    FOREIGN KEY (FK_USUARIO_cod_usuario)
    REFERENCES USUARIO (cod_usuario);
 
ALTER TABLE END_SUPER ADD CONSTRAINT FK_END_SUPER_0
    FOREIGN KEY (FK_ENDERECO_id_endereco)
    REFERENCES ENDERECO (id_endereco);
 
ALTER TABLE END_SUPER ADD CONSTRAINT FK_END_SUPER_1
    FOREIGN KEY (FK_SUPERMERCADO_id_supermercado)
    REFERENCES SUPERMERCADO (id_supermercado);
 
ALTER TABLE CID_BAI ADD CONSTRAINT FK_CID_BAI_0
    FOREIGN KEY (FK_CIDADE_id_cidade)
    REFERENCES CIDADE (id_cidade);
 
ALTER TABLE CID_BAI ADD CONSTRAINT FK_CID_BAI_1
    FOREIGN KEY (FK_BAIRRO_id_bairro)
    REFERENCES BAIRRO (id_bairro);
 
ALTER TABLE PROD_TAG ADD CONSTRAINT FK_PROD_TAG_0
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE PROD_TAG ADD CONSTRAINT FK_PROD_TAG_1
    FOREIGN KEY (FK_TAG_id_tag)
    REFERENCES TAG (id_tag);
 
ALTER TABLE BAI_END ADD CONSTRAINT FK_BAI_END_0
    FOREIGN KEY (FK_BAIRRO_id_bairro)
    REFERENCES BAIRRO (id_bairro);
 
ALTER TABLE BAI_END ADD CONSTRAINT FK_BAI_END_1
    FOREIGN KEY (FK_ENDERECO_id_endereco)
    REFERENCES ENDERECO (id_endereco);
 
ALTER TABLE ESTA ADD CONSTRAINT FK_ESTA_0
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE ESTA ADD CONSTRAINT FK_ESTA_1
    FOREIGN KEY (FK_SUPERMERCADO_id_supermercado)
    REFERENCES SUPERMERCADO (id_supermercado);
    

insert into usuario (cod_usuario, nome, login, passwd, email)
values  (1, 'Ramom Matieli', 'ramommatieli13', 'ifes123', 'ramommatieli@hotmail.com'),
		(2, 'Jean Carlos', 'jeancarlos_fs', 'jean123', 'jean_carlos@gmail.com'),
        (3, 'João Vitor', 'joaovitor_st', 'jaovit32', 'jean_carlos@gmail.com'),
        (4, 'Miguel Santos', 'miguel3541', 'miguel12', 'miguel@ig.com.br'),
        (5, 'Davi Soares', 'davi_15a', 'davi159', 'davi12@hotmail.com'),
        (6, 'Arthur Motta', 'arthur_art', 'arthur98', 'arthurferreira@gmail.com'),
        (7, 'Gabriel Silva', 'gabriel_199', 'biel1234', 'gabriel@hotmail.com'),
        (8, 'Sophia Araújo', 'sophia8', 'soso1478', 'sophia@hotmail.com'),
        (9, 'Lucas Alves', 'lucas_alves', 'lucs144', 'lucas@gmail.com'),
        (10, 'Lucineia Martins', 'lucineia_t19', 'luci1234', 'lucineia@gmail.com');
        
insert into produto (id_produto, nome, preco)
values  (1, 'alho', 8.90),
		(2, 'leite ninho', 4.99),
        (3, 'feijão', 4.42),
        (4, 'suco de laranja', 2.50),
        (5, 'café', 3.99),
        (6, 'cebola', 2.00),
        (7, 'arroz', 11),
        (8, 'pipoca', 2.60),
        (9, 'maçã', 3.60),
        (10, 'sardinha', 1.99); #produto do usuário 8
        
insert into categoria (id_categoria, nome)
values  (1, 'Hortifruti'),
		(2, 'Enlatados'),
        (3, 'Bebidas'),
        (4, 'Cereais');
        
insert into un_medida (id_un_medida, tipo)
values  (1, 'kg'),
		(2, 'unidade');
        
insert into tag (id_tag, nome)
values  (1, 'peixe');

insert into imagem (id_imagem, link)
values  (1, 'c:\\preco_baixo\\imagens\\minhafoto4.jpg'),
		(2, 'c:\\preco_baixo\\imagens\\foto01.jpg'),
        (3, 'c:\\preco_baixo\\imagens\\foto02.jpg'),
        (4, 'c:\\preco_baixo\\imagens\\minhafoto1.jpg'),
        (5, 'c:\\preco_baixo\\imagens\\foto003.jpg'),
        (6, 'c:\\preco_baixo\\imagens\\minhafoto5.jpg'),
        (7, 'c:\\preco_baixo\\imagens\\minhafoto.jpg'),
        (8, 'c:\\preco_baixo\\imagens\\minhafoto2.jpg'),
        (9, 'c:\\preco_baixo\\imagens\\minhafoto3.jpg'),
        (10, 'c:\\preco_baixo\\imagens\\foto004.jpg'),
        (11, 'c:\\preco_baixo\\imagens\\foto005.jpg'),
        (12, 'c:\\preco_baixo\\imagens\\foto1.jpg'),
        (13, 'c:\\preco_baixo\\imagens\\foto5.jpg'),
        (14, 'c:\\preco_baixo\\imagens\\foto0030.jpg'),
        (15, 'c:\\preco_baixo\\imagens\\minhafoto8.jpg'),
        (16, 'c:\\preco_baixo\\imagens\\minhafoto9.jpg');
        
insert into supermercado (id_supermercado, nome)
values  (1, 'Carone'),
		(2, 'Epa'),
        (3, 'Atacadão'),
        (4, 'Walmart'),
        (5, 'Extrabom');
        
insert into endereco(id_endereco, numero, logradouro)
values  (1, 3200, 'Avenida'),
		(2, 459, 'Rua'),
        (3, 938, 'Rua'),
        (4, 1333, 'Rua'),
        (5, 2570, 'Avenida'),
        (6, 25, 'Rua'),
        (7, 433, 'Rua'),
        (8, 111, 'Rua');
               
        
insert into bairro (id_bairro, nome)
values  (1, 'St. Lúcia'),
        (2, 'Laranjeiras'),
        (3, 'Aribiri'),
        (4, 'Centro'),
        (5, 'Nova Carapina'),
        (6, 'Jaburuna'),
        (7, 'Jardim da Penha');
        
        
insert into cidade (id_cidade, nome)
values  (1, 'Vitória'),
		(2, 'Serra'),
        (3, 'Vila Velha'),
        (4, 'Guarapari');
        
insert into contem (FK_IMAGEM_id_imagem, FK_PRODUTO_id_produto)
values  (7, 1),
		(8, 2),
		(9, 3),
        (10, 4),
        (11, 5),
        (12, 6),
        (13, 10),
        (14, 7),
        (15, 8),
        (16, 9);
        
       
insert into ESTA (FK_SUPERMERCADO_id_supermercado, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(3, 3),
        (4, 4),
        (5, 5),
        (2, 6),
        (3, 7),
        (1, 8),
        (5, 9),
        (4, 10);
        
insert into PERTENCE (FK_CATEGORIA_id_categoria, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(1, 3),
        (3, 4),
        (3, 5),
        (1, 6),
        (4, 7),
        (4, 8),
        (1, 9),
        (2, 10);
        

        
insert into PROD_TAG (FK_PRODUTO_id_produto, FK_TAG_id_tag)
values  (10, 1);

insert into PUBLICA (FK_USUARIO_cod_usuario, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (8, 10),
        (9,8),
        (10, 9);
        
insert into POSSUI (FK_UN_MEDIDA_id_un_medida, FK_PRODUTO_id_produto)
values  (1, 1),
		(2, 2),
		(1, 3),
        (2, 4),
        (2, 5),
        (1, 6),
        (1, 7),
        (2, 8),
        (1,9),
        (2,10);
        
insert into TEM (FK_IMAGEM_id_imagem, FK_USUARIO_cod_usuario)
values  (1, 2),
		(2, 4),
        (3, 5),
        (4, 7),
        (5, 8),
        (6, 10);
        
insert into END_SUPER(FK_ENDERECO_id_endereco, FK_SUPERMERCADO_id_supermercado)
values  (1, 1),
		(2, 2),
        (3, 3),
        (4, 4),
        (5, 5),
        (6, 2),
        (7, 4),
        (8, 5);
        
insert into CID_BAI(FK_CIDADE_id_cidade, FK_BAIRRO_id_bairro)
values  (1, 1),
		(2, 2),
		(3, 3),
        (1, 4),
        (2, 5),
        (3, 6),
        (1, 7),
        (4, 4);
        
insert into BAI_END(FK_BAIRRO_id_bairro, FK_ENDERECO_id_endereco)
values  (1, 1),
		(2, 2),
		(3, 3),
        (4, 4),
        (5, 5),
        (6, 6),
        (7, 7),
        (7, 1),
        (4, 8);