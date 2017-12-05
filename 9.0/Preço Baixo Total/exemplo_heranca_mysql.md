# Exemplo simples de herança em Mysql

## Contexto
Tabela pai:

1. Pessoa (representa a com atributos em comum)

Tabelas filhas:

1. Motorista 
2. Especialista

## Criação de tabelas
CREATE TABLE pessoa (
nome varchar(100),
rg int,
cod_pessoa int PRIMARY KEY
);

CREATE TABLE motorista (
cnh varchar(100),
cod_pessoa int,
FOREIGN KEY(cod_pessoa) REFERENCES pessoa (cod_pessoa)
);

CREATE TABLE especialista (
especializacao varchar(100),
cod_pessoa int,
FOREIGN KEY(cod_pessoa) REFERENCES pessoa (cod_pessoa)
)

## Inserção de dados

insert into pessoa values ('Pedro',1213,1);
insert into motorista values ('cnhpessoa1',1)

insert into pessoa values ('Paulo',1245,2);
insert into especialista values ('DBA',2)

insert into pessoa values ('Paola',1545,3);
insert into especialista values ('Programadora',3)

## Seleção de dados
select * from pessoa inner join especialista
on (pessoa.cod_pessoa=especialista.cod_pessoa);



