create database loja_db;
use loja_db;

create table categorias(
	id_categoria int primary key auto_increment,
    nome varchar(50) not null unique
);
    
create table lojas(
	id_loja int auto_increment,
    nome_loja varchar(30) not null,
    cidade varchar(55) default 'Birigui',
    primary key(id_loja)
);

create table produtos(
	id_produto int auto_increment,
    nome_produto varchar(60) not null,
    preco decimal(10,2),
    id_loja int,
    id_categoria int,
    primary key(id_produto),
    foreign key(id_loja) references lojas(id_loja),
    foreign key(id_categoria) references categorias(id_categoria)
);

insert into categorias(nome)
	values('Alimentos'),
		  ('Limpezas');

insert into lojas(nome_loja, cidade)
values('Loja Um'),
	  ('Loja Dois'),
      ('Loja Três', 'Nova Luzitânia');

insert into produtos(nome_produto, preco, id_loja, id_categoria)
values('Cavadeira', 78.99, 1, 1),
	  ('Cimento', 58.79, 2, 2);

select nome_loja, cidade
from lojas
where nome_loja like '%e';

select * 
from categorias
where id_categoria in(2, 7, 8, 10);

select *
from produtos
where id_loja = 2 and preco between 120 and 550;

select p.nome_produto, p.preco
	from produtos p join categorias c on p.id_categoria = c.id_categoria
where c.nome = 'Alimentos'
order by preco desc;

select p.nome_produto, l.cidade
	from produtos p join lojas l on p.id_loja = l.id_loja
where l.cidade = 'Curitiba';

select p.nome_produto, l.cidade
	from produtos p, lojas l
where l.cidade = 'Curitiba' and p.id_loja = l.id_loja;

select p.nome_produto, p.preco, l.nome_loja, c.nome
	from produtos p, lojas l, categorias c
where p.id_loja = l.id_loja and p.id_categoria = c.id_categoria;

select p.nome_produto, p.preco, l.nome_loja, c.nome
	from produtos p join lojas l on p.id_loja = l.id_loja
    				join categorias c on p.id_categoria = c.id_categoria;
