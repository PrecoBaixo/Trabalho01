use precobaixo;

#1
select nome as bairro from 
bairro
inner join esta
on (id_bairro = fk_bairro_id_bairro);

#2
select nome as cidade from 
cidade
inner join esta
on (id_cidade = fk_cidade_id_cidade);

#3
select nome as categoria from 
categoria
inner join pertence
on (id_categoria = fk_categoria_id_categoria);

#4   Só será feita uma vez, pois o produto no momento não se repete, sendo assim é o mesmo que listar a tabela produto.
select nome as produto from 
produto
inner join pertence
on (id_produto = fk_produto_id_produto);

#5
select tipo as un_medida from 
un_medida
inner join quantidade
on (id_un_medida = fk_un_medida_id_un_medida);

#6
select usuario.nome as usuario, produto.nome as produto from 
usuario
inner join publica
on (cod_usuario= fk_usuario_cod_usuario)
inner join produto
on (id_produto = fk_produto_id_produto);

#7
select produto.nome as produto, categoria.nome as categoria from 
produto
inner join pertence
on (id_produto = fk_produto_id_produto)
inner join categoria
on (id_categoria = fk_categoria_id_categoria);

#8
select produto.nome as produto, tag.nome as tag from 
produto
inner join prod_tag
on (id_produto = fk_produto_id_produto)
inner join tag
on (id_tag = fk_tag_id_tag);

#9
select produto.nome as produto, tipo as un_medida from 
produto
inner join quantidade
on (id_produto = fk_produto_id_produto)
inner join un_medida
on (id_un_medida = fk_un_medida_id_un_medida);

#10
select produto.nome as produto, supermercado.nome as supermercado from 
produto
inner join esta_contido
on (id_produto = fk_produto_id_produto)
inner join supermercado
on (id_supermercado = fk_supermercado_id_supermercado);

#11
select supermercado.nome as supermercado, bairro.nome as bairro from 
supermercado
inner join possui
on (id_supermercado = fk_supermercado_id_supermercado)
inner join bairro
on (id_bairro = fk_bairro_id_bairro);

#12
select bairro.nome as bairro, cidade.nome as cidade from 
bairro
inner join esta
on (id_bairro = fk_bairro_id_bairro)
inner join cidade
on (id_cidade = fk_cidade_id_cidade); 

#13
select usuario.nome as usuario, link from 
usuario
inner join tem
on (cod_usuario = fk_usuario_cod_usuario)
inner join imagem
on (id_imagem = fk_imagem_id_imagem); 

#14
select produto.nome as produto, link from 
produto
inner join contem
on (id_produto = fk_produto_id_produto)
inner join imagem
on (id_imagem = fk_imagem_id_imagem); 



