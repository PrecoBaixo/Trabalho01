use precobaixo;

select produto.nome as produto, tipo as un_medida from 
produto
inner join quantidade
on (id_produto = fk_produto_id_produto)
inner join un_medida
on (id_un_medida = fk_un_medida_id_un_medida)
where tipo in( select tipo from un_medida where tipo='kg');

select * from produto
where preco in( select preco from produto where preco >= 4);

select nome from produto
where nome in( select nome from produto where nome like 'a%');
