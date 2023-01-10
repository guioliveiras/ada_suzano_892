CREATE TABLE cursos(
id INT NOT null generated always as identity (increment by 1),
curso VARCHAR(255) NOT NULL,
mensalidade NUMERIC NOT NULL,
PRIMARY KEY(id));

CREATE TABLE alunos(
id INT NOT null generated always as identity (increment by 1),
nome varchar(255) NOT NULL,
cpf char(11) NOT NULL,
email varchar(255) NOT NULL,
data_nascimento date NOT NULL,
endereco varchar(255),
complemento varchar(255),
PRIMARY KEY(id));

CREATE TABLE matriculas(
id int NOT NULL generated always as identity (increment by 1),
aluno_id int NOT NULL, 
curso_id int NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (aluno_id) REFERENCES alunos(id),
FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO cursos (curso, mensalidade) VALUES 
('Python', 190.90),
('SQL', 89.90),
('HTML', 159.90),
('JavaScript', 169.90),
('CSS', 159.90),
('C++', 249.90),
('Assembly', 299.90);

INSERT INTO alunos (nome, cpf, email, data_nascimento, endereco, complemento) VALUES
('Luana','74891309059', 'luana@gmail.com','01-05-1996','Rua Desembargador Tenório, 405, Maceió, AL','casa'),
('Marilia','87156434098', 'marilia@hotmail.com','03-05-1995', 'Avenida João Cabral de Melo Neto, 895, Linhares, ES','apartamento'),
('Raquel','54876582009', 'raquel@gmail.com','15-07-1994', 'Rua Buenos Aires, 389, Campo Grande, MS',''),
('Joana','77090621057', 'joana@gmail.com','03-07-1995', 'Rua Industrial José Paulo Alimonda, 772, Recife, PE','casa'),
('Fabricio','40025798081', 'fabricio@gmail.com','01-05-1993', '',''),
('Everaldo','88665354000', 'everaldo@hotmail.com','07-05-1993', 'Rua Domingos Magno, 582, Guarulhos, SP',''),
('Ricardo','62972133056', 'ricardo@gmail.com','15-05-1998', 'Rua Domingos Laureano de Brum, 504, Cruz Alta, RS',''),
('Cleber','20121986004', 'cleber@hotmail.com','01-05-1997', '',''),
('Fernando', '96421479049', 'fernando@hotmail.com','03-05-1989', 'Rua Carlos Vasconcelos, 637, São Luís, MA','casa'),
('Felipe','43732416003', 'felipe@hotmail.com','03-05-1996', 'Vila Cruzeiro, 398, Belém, PA','apartamento'),
('Matheus','99289151056', 'matheus@hotmail.com','15-05-1989','Rua Gil, 200, Volta Redonda, RJ',''),
('Rodrigo','30476191076', 'rodrigo@hotmail.com','01-05-1996', 'Rua Manacapuru, 115, Macapá, AP','casa'),
('Luma','91671341066', 'luma@gmail.com','01-05-1996', 'Rua Afonso Camargo, 625, Ponta Grossa, PR','casa'),
('Rafael','93153777020', 'rafael@gmail.com','15-03-1991', 'Rua Radiotelegrafista Odorico de Souza, 317, Joinville, SC','apartamento'),
('Mariana','10513157000', 'mariana@gmail.com','01-07-1998', 'Rua 12, 843, Araguaína, TO','casa'),
('Monique','72661509062', 'monique@gmail.com','15-07-1993', 'Rua Evanildo Serrano de Carvalho, 349, João Pessoa, PB',''),
('Joaquim', '97272994070', 'joaquim@hotmail.com','01-05-1994', 'Avenida André Antônio Maggi, 597, Sinop, MT',''),
('Sandro', '75551822036','sandro@gmail.com','01-05-1996', 'Rua Jocarly Gomes Salles, 692, Cariacica, ES','apartamento'),
('Henrique','87210587098', 'henrique@gmail.com','07-07-1995', 'Rua das Begônias, 599, Palmas, TO',''),
('Maria','43683463007', 'maria@gmail.com','07-07-1995', 'Travessa Flamengo, 690, Rio Branco, AC','casa'),
('Penha','43688963007', 'penha@gmail.com','07-07-1988', 'Avenida Céu Azul, 480, Boa Vista, RR','casa'),
('Laura', '08925636900', 'laura@gmail.com','07-07-1990', 'Rua Espírito Santo, 209, Erechim, RS','apartamento');

INSERT INTO matriculas (aluno_id, curso_id) VALUES
(14,1),(9,2),(3,1),(5,3),(20,4),(20,5),(9,6),(5,7),
(12,1),(11,1),(15,2),(7,3),(16,7),(7,6),(11,5),
(12,4),(17,3),(17,2),(3,3),(2,4),(11,7),(11,3),
(16,6),(1,1),(2,3),(4,7),(6,2),(8,2),(8,3),(10,1),
(13,5),(16,2),(18,3),(18,4),(19,2),(21,3),(21,4),
(22,3),(22,6),(1,5);