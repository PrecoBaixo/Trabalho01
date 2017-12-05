use precobaixo;

#1
select produto.nome as produto, categoria.nome as categoria from 
produto
inner join pertence
on (id_produto = fk_produto_id_produto)
inner join categoria
on (id_categoria = fk_categoria_id_categoria)
group by categoria;

#2
select count(produto.nome) as quant_produto, tipo as un_medida from 
produto
inner join quantidade
on (id_produto = fk_produto_id_produto)
inner join un_medida
on (id_un_medida = fk_un_medida_id_un_medida)
group by tipo;

#3
select produto.nome as produto, supermercado.nome as supermercado from 
produto
inner join esta_contido
on (id_produto = fk_produto_id_produto)
inner join supermercado
on (id_supermercado = fk_supermercado_id_supermercado)
group by supermercado;

#4
select bairro.nome as bairro, cidade.nome as cidade from 
bairro
inner join esta
on (id_bairro = fk_bairro_id_bairro)
inner join cidade
on (id_cidade = fk_cidade_id_cidade)
group by cidade; 

#5
select count(supermercado.nome) as quant_supermercado, bairro.nome as bairro from 
supermercado
inner join possui
on (id_supermercado = fk_supermercado_id_supermercado)
inner join bairro
on (id_bairro = fk_bairro_id_bairro)
group by bairro;

