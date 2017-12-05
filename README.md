# TRABALHO 01
Trabalho desenvolvido durante a disciplina de BD

# Sumário

### 1.COMPONENTES<br>
Ramom Matieli(ramommatieli@gmail.com)<br> 
Jean Carlos(jcferreirasilva0@gmail.com)<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
O projeto Preço Baixo consiste em uma aplicação na qual o usuário poderá fazer buscas, afim de encontrar o menor preço em algum supermercado do produto desejado. Este projeto visa ajudar as pessoas que procuram economizar na hora de ir as compras. Devido a crise econômica que passamos em nosso país, muitos buscam economizar o máximo possível. Com isso em mente, veio a ideia de criar uma aplicação que ajudaria as pessoas a economizar nas compras em supermercados. <br>

### 3.MINI-MUNDO<br>

O Sistema terá em sua pagina inicial a opção de **CADASTRO DE USUÁRIO, LOGIN e ESQUECI MINHA SENHA.** Para a criar um usuário haverá a inclusão do **NOME, EMAIL, DATA DE NASCIMENTO, SENHA, NOME DE LOGIN, CONFIRMAÇÃO DA SENHA e INCLUSÃO DE FOTO DE LOGIN(opcional).** Agora, se o utilizador estiver cadastrado e for realizar o **LOGIN**, necessariamente, terá que digitar o email e a senha, inseridos no ato de **CADASTRO DE USUÁRIO**. Para usuários que esqueceram a senha há a possibilidade de clicar em **ESQUECI MINHA SENHA**, esta opção pedirá o Email do Usuário, após isso, o mesmo será direciona a uma página em que requererá a senha enviada automaticamente pelo sistema ao email informado, juntamente com a nova senha e a confirmação de senha.

Ao entrar, encontrará as **categorias Recentes, Hortifruti, Enlatados, Massas, Higiene e +Add, a opção de adicionar uma nova Oferta, a opção de pesquisar um produto, a opção de acessar o perfil próprio e a opção de sair da conta/logout.** 

Ao clicar em uma categoria aparecerão os produtos relacionados, por exemplo, se o usuário clicar em massa aparecerão produtos como Macarrão, Lasanha ou qualquer outro produto relacionado. Entretanto, se for a categoria **+Add**, levará o usuários para cadastrar uma nova categoria - o usuário terá que colocar o nome dessa categoria, e clicar em adicionar. Agora, para **adicionar uma oferta**, o usuário informará o nome do produto, o preço, unidade de medida, supermercado, bairro, cidade, categoria e imagem da produto. O usuário poderá **pesquisar** por um determinado produto na lacuna superior da página. No canto superior lado esquerdo tem a **foto do usuário com o nome**, e clicando nesse ícone, o usuário obterá as informações individuais, bem como a opção de alterá-las. No canto superior lado direito há o ícone de **Sair ou Logout**.
Quando clicar em um produto será informado todo o detalhe: imagem do produto, nome do produto, o preço, unidade de medida, supermercado, bairro e cidade.

Mas, para que tudo ocorra bem, é vital a participação dos usuários, pois, eles ficam encarregados de colaborar com as publicações de promoções, adicionar novas categorias, adicionar novas ofertas e supermercados. E com essa interação dos usuários, a aplicação crescerá, se tornando uma grande comunidade que ajudaria a muitas pessoas na hora de ir às compras. <br>

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

LOGIN

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Login.PNG)

CADASTRO

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/cadastro.PNG)

TELA INICIAL

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/telaInicial.PNG)

DETALHE DA OFERTA

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/detalheOferta.PNG)

ADICIONAR OFERTA

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/adicionarOferta.PNG)

#### 4.1 TABELA DE DADOS DO SISTEMA:
    
Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Tabela%20BD.xlsx
    
#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    a) O sistema proposto poderá fornecer quais tipos de relatórios e informaçes? 
    b) Crie uma lista com os 10 principais relatórios que podero ser obtidos por meio do sistema proposto!
    
    Mostrará relatorios de promoções, usuários e mercados, e informará preços, tipos de  produtos e locais de mercado.
    RELATÓRIOS:
    -   Nome do Usuário;
    -   Email do Usuário;

### 5.MODELO CONCEITUAL<br>
    a) NOTACAO ENTIDADE RELACIONAMENTO

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_conceitual.png)

Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_conceitual.brM3    
    

#### 5.1 Validação do Modelo Conceitual
    EuPreciso: Criscia de Oliveira Souza e Hannah Santos Lucas
    CookInc: Sergio Vago e Isabella de Assis

#### 5.2 DECISÕES DE PROJETO
    Não foi tomada nenhuma decisão especial.
        
#### 5.3 DESCRIÇÃO DOS DADOS 
     USUÁRIO:
        Campo cod_usuario: foi escolhido o campo como chave primária; é um atributo do tipo INT, que será o identificador da tabela Usuário.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome real do usuário, e pode incluir caracteres e números com comprimento variável.
        Campo login: optou-se por usar o tipo varchar, o qual representa o login (nome) do usuário para entrar na aplicação, e pode incluir caracteres e números com comprimento variável.
        Campo passwd: optou-se por usar o  tipo varchar, o qual vai representar a senha (password) do usuário, que pode incluir     caracteres e números com comprimento variável.
        Campo email: foi escolhido o tipo varchar, que pode incluir caracteres e números de comprimento variáveis; vai representar uma informação de validação do usuário.
        
    IMAGEM:
        Campo id_imagem: foi escolhido usar o tipo INT, pois vai ser um identificador numérico da tabela.
        Campo link: optou-se por usar o tipo varchar, que pode incluir caracteres e números de comprimento variável, sendo que será o atributo que comportará o local (endereço) da imagem.
    
    PUBLICAÇÃO:
        Campo id_publicacao: foi escolhido usar o tipo INT, pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome (título) da publicação, e pode incluir caracteres e números com comprimento variável.
    
    PRODUTO:
        Campo id_produto: foi escolhido usar o tipo INT, pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome do produto, e pode incluir caracteres e números com comprimento variável.
        Campo preco: optou-se por usar o tipo FLOAT, pois o atributo armazena números decimais (quebrados, ou com virgula).
    
    SUPERMERCADO:
        Campo id_supermercado: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome do supermercado, e pode incluir caracteres e números com comprimento variável.
    
    BAIRRO:
        Campo id_bairro: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome do bairro, e pode incluir caracteres e números com comprimento variável.
     
     CIDADE:
        Campo id_bairro: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome da cidade, e pode incluir caracteres e números com comprimento variável.
    
    UN. MEDIDA:
        Campo id_un_medida: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo kg: optou-se por usar o tipo bool, pois o campo é assinalado (1) ou não (0).
        Campo unidade: optou-se por usar o tipo bool, pois o campo é assinalado (1) ou não (0).
    
    CATEGORIA:
        Campo id_categoria: foi escolhido usar o tipo INT (armazena um inteiro), pois vai ser um identificador numérico da tabela.
        Campo nome: optou-se por usar o tipo varchar, o qual representa o nome da categoria, e pode incluir caracteres e números com comprimento variável.
        
### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/L%C3%B3gico_2.png)

Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_L%C3%B3gico.brM3

### 7	MODELO FÍSICO<br>
 Link: https://github.com/PrecoBaixo/Trabalho01/blob/master/Modelo_f%C3%ADsico.txt
              
 
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES
        Dados fictícios, obtidos através da criação da tabela.
        
#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELA E INSERÇÃO DOS DADOS
Script para criação e iserção: https://github.com/PrecoBaixo/Trabalho01/blob/master/Create%20e%20insert%20BD.sql
       
        
### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>

    select * from bairro;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/bairro.PNG)


    select * from categoria;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/categoria.PNG)

    select * from cidade;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/cidade.PNG)

    select * from contem;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/contem.PNG)

    select * from esta;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/esta.PNG)

    select * from esta_contido;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/esta_contido.PNG)

    select * from imagem;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/imagem.PNG)

    select * from pertence;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/pertence.PNG)

    select * from possui;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/possui.PNG)

    select * from prod_tag;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/prod_tag.PNG)

    select * from produto;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/produto.PNG)

    select * from publica;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/publica.PNG)

    select * from quantidade;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/quantidade.PNG)

    select * from supermercado;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/supermercado.PNG)

    select * from tag;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/tag.PNG)

    select * from tem;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/tem.PNG)

    select * from un_medida;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/un_medida.PNG)

    select * from usuario;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/usuario.PNG)

    select * from endereco;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Select%20endereco.PNG)   

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 3) <br>

    select * from bairro where nome = "Jardim da Penha";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/pesquisa%20bairro.PNG)

    select * from supermercado where nome = "Walmart";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/pesquisa%20supermercado.PNG)

    select * from un_medida where tipo = "unidade";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/pesquisa%20un_medida.PNG)

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E CAMPOS RENOMEADOS (Mínimo 2)<br>

    select nome, preco as "produtos e preços" from produto where nome = "Manga" or preco > 4;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/pesquisa1.PNG)


    select nome as "somente nome de categoria" from categoria 
    where nome is not null
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/pesquisa2.PNG)


#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE (Mínimo 3)  <br>
    select * from produto where nome like "%C%";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/9.4/pesquisa1.PNG)

    select * from cidade where nome like "S____";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/9.4/pesquisa2.PNG)

    select * from bairro where nome like "%E%"
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.2/9.3/9.4/pesquisa3.PNG)


#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

    UPDATE produto set nome = 'Limão' where nome="Café";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.5/update1.PNG)

    UPDATE produto set preco = 3.00 where nome="Limão";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.5/update2.PNG)


    UPDATE supermercado set nome = 'São José' where nome="Atacadão";
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.5/update3.PNG)

    delete from tem where FK_USUARIO_cod_usuario = 1;
    delete from publica where FK_USUARIO_cod_usuario = 1;
    delete from usuario where cod_usuario = 1;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/9.1/9.5/delete%20todos.PNG)

#### 9.6	CONSULTAS COM JUNÇÃO (Todas Junções)<br>
Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Join%20Preco%20Baixo.sql
   
    select nome as bairro from 
    bairro
    inner join esta
    on (id_bairro = fk_bairro_id_bairro);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%201.jpg)

    select nome as cidade from 
    cidade
    inner join esta
    on (id_cidade = fk_cidade_id_cidade);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%202.jpg)

    select nome as categoria from 
    categoria
    inner join pertence
    on (id_categoria = fk_categoria_id_categoria);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%203.jpg)

    select nome as produto from 
    produto
    inner join pertence
    on (id_produto = fk_produto_id_produto);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%204.jpg)

    select tipo as un_medida from 
    un_medida
    inner join quantidade
    on (id_un_medida = fk_un_medida_id_un_medida);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%205.jpg)

    select usuario.nome as usuario, produto.nome as produto from 
    usuario
    inner join publica
    on (cod_usuario= fk_usuario_cod_usuario)
    inner join produto
    on (id_produto = fk_produto_id_produto);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%206.jpg)

    select produto.nome as produto, categoria.nome as categoria from 
    produto
    inner join pertence
    on (id_produto = fk_produto_id_produto)
    inner join categoria
    on (id_categoria = fk_categoria_id_categoria);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%207.jpg)

    select produto.nome as produto, tag.nome as tag from 
    produto
    inner join prod_tag
    on (id_produto = fk_produto_id_produto)
    inner join tag
    on (id_tag = fk_tag_id_tag);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%208.jpg)

    select produto.nome as produto, tipo as un_medida from 
    produto
    inner join quantidade
    on (id_produto = fk_produto_id_produto)
    inner join un_medida
    on (id_un_medida = fk_un_medida_id_un_medida);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%209.jpg)

    select produto.nome as produto, supermercado.nome as supermercado from 
    produto
    inner join esta_contido
    on (id_produto = fk_produto_id_produto)
    inner join supermercado
    on (id_supermercado = fk_supermercado_id_supermercado);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2010.jpg)

    select supermercado.nome as supermercado, bairro.nome as bairro from 
    supermercado
    inner join possui
    on (id_supermercado = fk_supermercado_id_supermercado)
    inner join bairro
    on (id_bairro = fk_bairro_id_bairro);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2011.jpg)

    select bairro.nome as bairro, cidade.nome as cidade from 
    bairro
    inner join esta
    on (id_bairro = fk_bairro_id_bairro)
    inner join cidade
    on (id_cidade = fk_cidade_id_cidade);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2012.jpg)

    select usuario.nome as usuario, link from 
    usuario
    inner join tem
    on (cod_usuario = fk_usuario_cod_usuario)
    inner join imagem
    on (id_imagem = fk_imagem_id_imagem);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2013.jpg)

    select produto.nome as produto, link from 
    produto
    inner join contem
    on (id_produto = fk_produto_id_produto)
    inner join imagem
    on (id_imagem = fk_imagem_id_imagem);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/join%2014.jpg)


#### 9.7	CONSULTAS COM GROUP BY (Mínimo 5)<br>
Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by.sql

    select produto.nome as produto, categoria.nome as categoria from 
    produto
    inner join pertence
    on (id_produto = fk_produto_id_produto)
    inner join categoria
    on (id_categoria = fk_categoria_id_categoria)
    group by categoria;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%201.jpg)

    select count(produto.nome) as quant_produto, tipo as un_medida from 
    produto
    inner join quantidade
    on (id_produto = fk_produto_id_produto)
    inner join un_medida
    on (id_un_medida = fk_un_medida_id_un_medida)
    group by tipo;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%202.jpg)

    select produto.nome as produto, supermercado.nome as supermercado from 
    produto
    inner join esta_contido
    on (id_produto = fk_produto_id_produto)
    inner join supermercado
    on (id_supermercado = fk_supermercado_id_supermercado)
    group by supermercado;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%203.jpg)

    select bairro.nome as bairro, cidade.nome as cidade from 
    bairro
    inner join esta
    on (id_bairro = fk_bairro_id_bairro)
    inner join cidade
    on (id_cidade = fk_cidade_id_cidade)
    group by cidade;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%204.jpg)

    select count(supermercado.nome) as quant_supermercado, bairro.nome as bairro from 
    supermercado
    inner join possui
    on (id_supermercado = fk_supermercado_id_supermercado)
    inner join bairro
    on (id_bairro = fk_bairro_id_bairro)
    group by bairro;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Group%20by%205.jpg)        
        
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4) <br>
   Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join.sql
   
        select nome, fk_imagem_id_imagem as numero_imagem
        from usuario
        left outer join tem
        on (cod_usuario=fk_usuario_cod_usuario);   
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%201.jpg)
        
        select nome, fk_tag_id_tag as numero_tag from 
        prod_tag
        right join produto
        on (id_produto = fk_produto_id_produto);
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%202.jpg)
   
        select nome, fk_usuario_cod_usuario 
        from produto
        left outer join publica
        on (fk_produto_id_produto=id_produto);
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%203.jpg)
   
        select nome, fk_usuario_cod_usuario 
        from produto
        left outer join publica
        on (fk_produto_id_produto=id_produto);
   ![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/Left%20e%20Right%20Join%204.jpg)
   
#### 9.9	CONSULTAS COM SELF JOIN (todas) E VIEW (mais importantes) <br>
  Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/Views.sql
  
        create view quant_usuarios as
        select count(*) as quant_usuarios from usuario;

        select * from quant_usuarios;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%201.jpg)

        create view usuarios_ativos as 
        select usuario.nome as usuario, produto.nome as produto from 
        usuario
        inner join publica
        on (cod_usuario= fk_usuario_cod_usuario)
        inner join produto
        on (id_produto = fk_produto_id_produto);

        select * from usuarios_ativos;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%202.jpg)

        create view produtos_por_categoria as
        select count(produto.nome) as quant_produto, categoria.nome as categoria from 
        produto
        inner join pertence
        on (id_produto = fk_produto_id_produto)
        inner join categoria
        on (id_categoria = fk_categoria_id_categoria)
        group by categoria;

        select * from produtos_por_categoria;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%203.jpg)

        create view top_supermercados as
        select count(produto.nome) as quant_produto, supermercado.nome as supermercado from 
        produto
        inner join esta_contido
        on (id_produto = fk_produto_id_produto)
        inner join supermercado
        on (id_supermercado = fk_supermercado_id_supermercado)
        group by supermercado;

        select * from top_supermercados;
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/view%204.jpg)
  
#### 9.10	SUBCONSULTAS (Mínimo 3) <br>
  Script: https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsultas.sql
  
        select produto.nome as produto, tipo as un_medida from 
        produto
        inner join quantidade
        on (id_produto = fk_produto_id_produto)
        inner join un_medida
        on (id_un_medida = fk_un_medida_id_un_medida)
        where tipo in( select tipo from un_medida where tipo='kg');
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsulta%201.jpg)

        select * from produto
        where preco in( select preco from produto where preco >= 4);
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsulta%202.jpg)

        select nome from produto
        where nome in( select nome from produto where nome like 'a%');
![Alt text](https://github.com/PrecoBaixo/Trabalho01/blob/master/subconsulta%203.jpg)
  
### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES<br>
### 11	DIFICULDADES ENCONTRADAS PELO GRUPO<br>

        Entrega até este ponto em (data a ser definida)
        
### 12  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
