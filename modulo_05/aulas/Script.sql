create table estudantes(
id int not null generated always as identity (increment by 1),
nome varchar(255) not null,
email varchar(255),
date_nascimento date,
primary key(id)
);

alter table estudantes add mensalidade numeric;

INSERT INTO estudantes (nome, email, date_nascimento, mensalidade) VALUES ( 'Mariane', 'mariane@hotmail.com', '01-01-1996', 350.00);
INSERT INTO estudantes (nome, email, date_nascimento, mensalidade) VALUES ( 'Rafaela', 'rafaela@hotmail.com', '01-04-1995', 250.00);
INSERT INTO estudantes (nome, email, date_nascimento, mensalidade) VALUES ( 'Douglas', 'douglas@hotmail.com', '05-07-1993', 250.00);
INSERT INTO estudantes (nome, email, date_nascimento, mensalidade) VALUES ( 'Mauricio', 'mauricio@hotmail.com', '01-10-1990', 300.00);
INSERT INTO estudantes (nome, email, date_nascimento, mensalidade) VALUES ( 'Roberto', 'robertoo@gmail.com', '01-10-1989', 400.00);
INSERT INTO estudantes (nome, email, date_nascimento, mensalidade) VALUES ( 'Helena', 'helena@gmail.com', '01-09-1992', 420.00);
INSERT INTO estudantes (nome, email, date_nascimento, mensalidade) VALUES ( 'Isabela', 'isabel@gmail.com', '09-10-1988', 420.00);

select *
from estudantes;


create table telefone(
id int not null,
telefone char(11) not null,
estudante_id int not null,
primary key (id),
foreign key (estudante_id) references estudantes(id) 
);

insert into telefone (id, telefone, estudante_id) values (1, '11997583963', 1);
insert into telefone (id, telefone, estudante_id) values (3, '17997583963', 2);

select *
from telefone;
