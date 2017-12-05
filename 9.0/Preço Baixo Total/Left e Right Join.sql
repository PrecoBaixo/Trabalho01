use precobaixo;

select nome, fk_imagem_id_imagem as numero_imagem
from usuario
left outer join tem
on (cod_usuario=fk_usuario_cod_usuario);

select nome, fk_tag_id_tag as numero_tag from 
prod_tag
right join produto
on (id_produto = fk_produto_id_produto);

select nome, fk_usuario_cod_usuario 
from produto
left outer join publica
on (fk_produto_id_produto=id_produto);

select link, fk_usuario_cod_usuario
from tem
right outer join imagem
on (id_imagem=fk_imagem_id_imagem);






