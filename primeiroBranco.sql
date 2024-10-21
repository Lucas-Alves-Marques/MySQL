use autopcas;

alter table tabela_01

add estoqueMaximo 			int,
add tipoDeProduto			enum("Montadora", "Reposição", "Exportação"),
add unidadeDeMedida 		enum("centimetro", "metro", "milimetro"),
add cartegoriaDeProduto		enum("Variaveis"); 

insert into tabela_01 (codigoDoProduto) value (047142);

describe tabela_01;

select*from tabela_01;







































