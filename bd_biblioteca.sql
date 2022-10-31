create database biblioteca;
use biblioteca;

create table livro (
id_livro int not null auto_increment primary key,
nome_livro varchar (200),
genero_livro varchar (200),
cod_livro varchar(15),
id_autor int,
id_editora int
) engine = InnoDB;
 

create table editora (
id_editora int not null auto_increment primary key,
nome_editora varchar (200),
telefone  varchar (200),
endereco varchar (200)
)engine = InnoDB;


create table autor( 
id_autor int not null auto_increment primary key,
nome_autor varchar (200),
telefone_autor varchar (200),
sexo_autor enum ('m','f')
)engine = InnoDB;


create table usuario (
id_usuario int not null auto_increment primary key,
nome_usuario varchar (200),
cod_usuario varchar (200),
telefone_usuario varchar (200),
tipo_usuario varchar (200),
endereco varchar (200) 
)engine = InnoDB;



create table emprestimo(
id_emprestimo int not null auto_increment primary key,
id_livro int,
data_emprestimo date,
id_aluno int,
id_usuario int
)engine = InnoDB;


alter table livro add constraint fk_id_autor foreign key (id_autor) references autor(id_autor);

alter table livro add constraint fk_id_editora foreign key(id_editora) references editora(id_editora);

alter table emprestimo add constraint fk_id_livro foreign key(id_livro) references livro(id_livro);

alter table emprestimo add constraint fk_id_usuario foreign key(id_usuario) references usuario(id_usuario);


 
insert into livro (nome_livro, genero_livro, cod_livro, )

values ('era uma vez', 'romance', '1515'); 


insert into livro (nome_livro, genero_livro, cod_livro, id_editora, id_autor) 
values ('cinderela', 'terror', '1314', '1', '1');


insert into autor (nome_autor, telefone_autor, sexo_autor) 
values ('vitoria', '12345678','f');

insert into editora (nome_editora, telefone, endereco) 
values ('edit', '151515155', 'narnia');

insert into usuario (nome_usuario, cod_usuario, telefone_usuario, tipo_usuario, endereco) 
values ('gabriela', '123', '999999999','professor', 'narnia');

insert into usuario (nome_usuario, cod_usuario, telefone_usuario, tipo_usuario, endereco) 
values ('geovana', '124', '999999930', 'aluno', 'narnia');
 

insert into emprestimo (data_emprestimo, id_aluno, id_usuario) 
values ( '2022.09.30', '2', '2');




select*from livro;
select*from editora;
select*from autor;
select*from usuario;
select*from emprestimo;


