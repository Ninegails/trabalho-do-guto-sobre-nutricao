create database db_nutricao;

use db_nutricao

create table t_cliente(
    codigo int not null auto_increment,
    nome varchar(100),
    cidade varchar(100),
    estado varchar(2),
    peso float(10,2),
    altura float(10,2),
    data_nascimento datetime,
    data_ultima_consulta datetime,
    primary key(codigo) 
);

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Arnaldo Antunes", "Americana", "SP", 90, 1.8, "1988-10-20", "2018-09-24");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Claudemir Silva", "Campinas", "SP", 75, 1.9, "1980--11-30", "2018-09-10");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Roberto da Costa", "Americana", "SP", 92, 1.7, "1986-08-05", "2018-10-05");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Mônica Silva", "Rio de janeiro", "RJ", 78, 1.75, "1990-05-20", "2018-10-17");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Renata Domingues", "Ouro Preto", "MG", 60, 1.63, "1980-01-21", "2018-09-20");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Cleide Souza", "Campinas", "SP", 62, 1.5, "1991-10-22", "2018-10-30");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Fernanda Souza", "Rio de Janeiro", "RJ", 75, 1.75, "1992-05-10", "2018-09-24");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Fernando Souza", "Campinas", "SP", 80, 1.9, "1992-06-15", "2018-09-10");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Renato Araújo", "Belo Horizonte", "MG", 90, 1.85, "1992-01-20", "2018-10-05");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Franciele Freitas", "Americana", "SP", 70, 1.68, "1992-02-18", "2018-08-17");

insert into t_cliente (nome, cidade, estado, peso, altura, data_nascimento, data_ultima_consulta) values("Claudemir Rezende", "Americana", "SP", 75, 1.70, "1992-05-07", "2018-09-15");


create table t_nutricionista(
    codigo int not null auto_increment,
    nome varchar(100),
    especialidade varchar(50),
    cidade varchar(100),
    estado varchar(2),
    primary key(codigo) );

insert into t_nutricionista (nome, cidade, estado, especialidade) values("Bruce Wayne", "Piracicaba", "SP", "Nutrição Esportiva");

insert into t_nutricionista (nome, cidade, estado, especialidade) values("Sarah Connor", "Campinas", "SP", "Nutrição Esportiva");

insert into t_nutricionista (nome, cidade, estado, especialidade) values("Milene Rodrigues", "Nova Odessa", "SP", "Nutrição Esportiva");

insert into t_nutricionista (nome, cidade, estado, especialidade) values("Claire R. Clair", "Rio de Janeiro", "RJ", "Reeducação Alimentar");

insert into t_nutricionista (nome, cidade, estado, especialidade) values("Maycon Douglas", "São Paulo", "SP", "Reeducação Alimentar");

/* select seleciona  */
select * from t_nutricionista;

select * from t_nutricionista where cidade= "Americana";

select * from t_nutricionista where especialidade= "Nutrição Esportiva";

select * from t_nutricionista where nome= "Maycon Douglas";

select * from t_nutricionista where estado!= "SP";

update t_nutricionista set nome= "Maicon Douglas" where codigo= 5;

update t_nutricionista set especialidade= "NE" where especialidade= "Nutrição Esportiva";

update t_nutricionista set especialidade= "RA" where especialidade= "Reeducação Alimentar";

/* delete serve para deletar */
delete from t_nutricionista where nome= "Milene Rodrigues";


create table t_consulta(
    codigo int not null auto_increment,
    data_consulta datetime,
    cliente int,
    nutricionista int,
    primary key (codigo)
);

/* insert serve para adicionar coisas a table */
insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-30", 1, 1);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-29", 2, 2);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-29", 3, 2);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-30", 4, 3);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-30", 5, 5);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-30", 6, 1);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-29", 7, 1);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-29", 8, 2);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-30", 9, 3);

insert into t_consulta (data_consulta, cliente, nutricionista) values("2018-10-30", 10, 1);

/* update serve para atualizar a table */
update t_consulta set nutricionista= 5 where nutricionista= 3;