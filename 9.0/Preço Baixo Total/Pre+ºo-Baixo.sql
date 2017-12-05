use PrecoBaixo;


CREATE TABLE USUARIO_IMAGEM (
    cod_usuario INT,
    nome varchar(100),
    login varchar(15),
    passwd varchar(8),
    email varchar(100),
    id_imagem INT,
    link varchar(100),
    PRIMARY KEY (cod_usuario, id_imagem)
);

CREATE TABLE PRODUTO (
    id_produto INT PRIMARY KEY,
    nome varchar(100),
    preco FLOAT
);

CREATE TABLE UN_MEDIDA (
    id_un_medida INT PRIMARY KEY,
    kg bool,
    unidade bool
);

CREATE TABLE CATEGORIA (
    id_categoria INT PRIMARY KEY,
    nome varchar(100)
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

CREATE TABLE PUBLICA (
    FK_USUARIO_IMAGEM_cod_usuario INT,
    FK_PRODUTO_id_produto INT,
    nome varchar(100),
    id_publicacao INT PRIMARY KEY
);

CREATE TABLE QUANTIDADE (
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

CREATE TABLE ESTA_CONTIDO (
    FK_SUPERMERCADO_id_supermercado INT,
    FK_PRODUTO_id_produto INT
);

CREATE TABLE POSSUI (
    FK_SUPERMERCADO_id_supermercado INT,
    FK_BAIRRO_id_bairro INT
);

CREATE TABLE ESTA (
    FK_BAIRRO_id_bairro INT,
    FK_CIDADE_id_cidade INT
);


ALTER TABLE PUBLICA ADD CONSTRAINT FK_PUBLICA_1
    FOREIGN KEY (FK_USUARIO_IMAGEM_cod_usuario, ???)
    REFERENCES USUARIO_IMAGEM (cod_usuario, ???);
 
ALTER TABLE PUBLICA ADD CONSTRAINT FK_PUBLICA_2
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE QUANTIDADE ADD CONSTRAINT FK_QUANTIDADE_0
    FOREIGN KEY (FK_UN_MEDIDA_id_un_medida)
    REFERENCES UN_MEDIDA (id_un_medida);
 
ALTER TABLE QUANTIDADE ADD CONSTRAINT FK_QUANTIDADE_1
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
    REFERENCES ??? (???);
 
ALTER TABLE CONTEM ADD CONSTRAINT FK_CONTEM_1
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE ESTA_CONTIDO ADD CONSTRAINT FK_ESTA_CONTIDO_0
    FOREIGN KEY (FK_SUPERMERCADO_id_supermercado)
    REFERENCES SUPERMERCADO (id_supermercado);
 
ALTER TABLE ESTA_CONTIDO ADD CONSTRAINT FK_ESTA_CONTIDO_1
    FOREIGN KEY (FK_PRODUTO_id_produto)
    REFERENCES PRODUTO (id_produto);
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_0
    FOREIGN KEY (FK_SUPERMERCADO_id_supermercado)
    REFERENCES SUPERMERCADO (id_supermercado);
 
ALTER TABLE POSSUI ADD CONSTRAINT FK_POSSUI_1
    FOREIGN KEY (FK_BAIRRO_id_bairro)
    REFERENCES BAIRRO (id_bairro);
 
ALTER TABLE ESTA ADD CONSTRAINT FK_ESTA_0
    FOREIGN KEY (FK_BAIRRO_id_bairro)
    REFERENCES BAIRRO (id_bairro);
 
ALTER TABLE ESTA ADD CONSTRAINT FK_ESTA_1
    FOREIGN KEY (FK_CIDADE_id_cidade)
    REFERENCES CIDADE (id_cidade);
 
 
 INSERT INTO usuario_imagem (cod_usuario,nome,login,passwd,email,id_imagem,link)
 VALUES (1,'Ramom Matieli','ramommatieli13','ifes123','ramomm13@hotmail.com',1,null),
		(2,'Jean Carlos','jeancarlos_fs','jean123','jean_carlos@gmail.com',2,'c:\preco_baixo\imagens\minhafoto4.jpg'),
        (3,'João Vitor','joaovitor_st','jaovitor321','joao_vitor@gmail.com',3,null),	
        (4,'Miguel Santos','miguel3541','miguel123','miguel@ig.com.br',4,'c:\preco_baixo\imagens\foto01.jpg'),
        (5,'Davi Soares','davi_15a','davi159','davi12@hotmail.com',5,'c:\preco_baixo\imagens\foto02.jpg'),
        (6,'Arthur Motta','arthur_art','arthur1998','arthurferreira@gmail.com',6,null),
        (7,'Gabriel Silva','gabriel_199','biel1234','gabriel@hotmail.com',7,'c:\preco_baixo\imagens\minhafoto1.jpg'),
        (8,'Sophia Araújo','sophia8','soso147852','sophia@hotmail.com',8,'c:\preco_baixo\imagens\foto003.jpg'),
        (9,'Lucas Alves','lucas_alves','lucasalves144','lucas@email.com',9,null),
        (10,'Lucineia Martins','lucineia_t19','luci1234','lucineia@gmail.com',10,'c:\preco_baixo\imagens\minhafoto5.jpg');

 INSERT INTO produto (id_produto,nome,preco)
 VALUES (10,'alho',8.90),
		(20,'leite ninho',4.99),
        (30,'feijão',4.42),
        (40,'suco de laranja',2.50),
        (50,'café',3.99),
        (60,'cebola',2.00),
        (70,null,null),
        (80,'arroz',11.00),
        (90,'pipoca',2.60),
        (100,'maçã',3.60);
        
 INSERT INTO  un_medida(id_un_medida,kg,unidade)
 VALUES (1,1,null),
		(2,null,1),
        (3,null,null),
        (4,null,1),
        (5,null,1),
        (6,1,null),
        (7,null,null),
        (8,null,1),
        (9,null,1),
        (10,1,null);
        
INSERT INTO  categoria(id_categoria,nome)
VALUES	(1,'Hortifruti'),
		(2,'Enlatados'),
        (3,'Hortifruti'),
        (4,'Bebidas'),
        (5,'Bebidas'),
        (6,'Hortifruti'),
        (7,null),
        (8,'Cereais'),
        (9,'Cereais'),
        (10,'Hortifruti');
        
INSERT INTO  supermercado(id_supermercado,nome)
VALUES	(1,'Carone'),
		(2,'Epa'),
        (3,'Atacadão'),
        (4,'Walmart'),
        (5,'Extrabom'),
        (6,'Epa'),
        (7,null),
        (8,'Atacadão'),
        (9,'Carone'),
        (10,'Extrabom');
        
INSERT INTO  cidade(id_cidade,nome)
VALUES	(15,'Vitória'),
		(25,'Serra'),
        (35,'Vila Velha'),
        (45,'Vitória'),
        (55,'Serra'),
        (65,'Vila Velha'),
        (75,null),
        (85,'Vitória'),
        (95,'Vitória'),
        (105,'Guarapari');
        
INSERT INTO  bairro(id_bairro,nome)
VALUES	(1,'St. Lúcia'),
		(2,'Laranjeiras'),
        (3,'Aribiri'),
        (4,'Centro'),
        (5,'Nova Carapina'),
        (6,'Jaburuna'),
        (7,null),
        (8,'Jardim da Penha'),
        (9,'Jardim da Penha'),
        (10,'Centro');
        
INSERT INTO  publica(id_publicacao,nome)
VALUES	(15,'Alho Kg R$8,90'),
		(25,'Leite Ninho Un. R$4,99'),
        (35,'Feijão Kg. R$4,42'),
        (45,'Suco de Laranja Un. R$2,50'),
        (55,'Café Un. R$3,99'),
        (65,'Cebola Kg R$2,00'),
        (75,null),
        (85,'Arroz Kg R$11,00'),
        (95,'Pipoca Un. R$2,0'),
        (105,'Maçã Kg R$3,60');
        

		
		
        

