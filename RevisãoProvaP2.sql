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

insert into lojas(nome_loja)
values('Loja Um'),
	  ('Loja Dois');
      
select * from lojas;
