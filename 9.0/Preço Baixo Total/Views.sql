use precobaixo;

create view quant_usuarios as
select count(*) as quant_usuarios from usuario;

drop view quant_usuarios;

select * from quant_usuarios;

create view usuarios_ativos as 
select usuario.nome as usuario, produto.nome as produto from 
usuario
inner join publica
on (cod_usuario= fk_usuario_cod_usuario)
inner join produto
on (id_produto = fk_produto_id_produto);

select * from usuarios_ativos;

create view produtos_por_categoria as
select count(produto.nome) as quant_produto, categoria.nome as categoria from 
produto
inner join pertence
on (id_produto = fk_produto_id_produto)
inner join categoria
on (id_categoria = fk_categoria_id_categoria)
group by categoria;

select * from produtos_por_categoria;

create view top_supermercados as
select count(produto.nome) as quant_produto, supermercado.nome as supermercado from 
produto
inner join esta_contido
on (id_produto = fk_produto_id_produto)
inner join supermercado
on (id_supermercado = fk_supermercado_id_supermercado)
group by supermercado;

select * from top_supermercados;

