CREATE TABLE cursos(
id INT NOT null generated always as identity (increment by 1),
curso VARCHAR(255) NOT NULL,
mensalidade INT,
PRIMARY KEY(id));

CREATE TABLE alunos(
id INT NOT null generated always as identity (increment by 1),
nome VARCHAR(255) NOT NULL,
email VARCHAR(255),
cpf CHAR(14),
data_nascimento DATE,
cidade VARCHAR(255),
rua VARCHAR(255),
numero INT,
complemento VARCHAR(25),
curso_id INT,
PRIMARY KEY(id),
FOREIGN KEY (curso_id) REFERENCES cursos(id));


INSERT INTO cursos (curso, mensalidade) VALUES 
('Python', 200),
('SQL', 90),
('HTML', 160),
('JavaScript', 170),
('CSS', 160),
('C++', 250),
('Assembly', 300);


INSERT INTO alunos (nome, email, cpf, data_nascimento, cidade, rua, numero, complemento, curso_id) VALUES
('Luana', 'luana@gmail.com', '197.787.700-18', '01-05-1996', 'Jaboatão', 'Rua 2', 52, 'CASA', 1),
('Marilia', 'marilia@hotmail.com', '032.447.230-71', '03-05-1995', 'Recife',  'Rua Barão de Souza Leão', 12, 'APARTAMENTO', 2),
('Raquel', 'raquel@gmail.com', '144.306.020-85', '15-07-1994', 'Recife', 'Rua Marquês Júlio', 50, 'CASA', 3),
('Joana', 'joana@gmail.com', '655.023.390-92', '03-07-1995', 'Recife',  'Rua Ana Maria', 30, 'APARTAMENTO', 4),
('Fabricio', 'fabricio@gmail.com', '508.229.500-49', '01-05-1993', 'Camaragibe',  'Rua Nena Queiroga', 47, 'APARTAMENTO', 5),
('Everaldo', 'everaldo@hotmail.com', '169.610.560-91', '07-05-1993', 'Camaragibe',  'Rua São João', 56, 'CASA', 6),
('Ricardo', 'ricardo@gmail.com', '371.473.170-92', '15-05-1998', 'Recife',  'Rua 21 de Abril', 76, 'CASA', 1),
('Cleber', 'cleber@hotmail.com', '893.199.410-92', '01-05-1997', 'Recife', 'Rua Rio Branco', 86, 'APARTAMENTO', 1),
('Fernando', 'fernando@hotmail.com', '851.874.000-29', '03-05-1989', 'Camaragibe',  'Rua General Polonio',44, 'CASA', 1),
('Felipe', 'felipe@hotmail.com', '054.517.780-43', '03-05-1996', 'Camaragibe', 'Rua Hugo Victor', 37, '', 1),
('Matheus', 'matheus@hotmail.com', '545.365.500-38', '15-05-1989', 'Recife', 'Rua Amêlia', 88, 'APARTAMENTO', 5),
('Rodrigo', 'rodrigo@hotmail.com', '409.347.670-50', '01-05-1996', 'Camaragibe',  'Rua 13 de Março', 131, '', 6),
('Luma', 'luma@gmail.com', '838.454.770-08', '01-05-1996', 'Recife', 'Rua 11 de Setembro', 123, 'CASA', 1),
('Rafael', 'rafael@gmail.com', '285.428.640-50', '15-03-1991', 'Camaragibe',  'Rua Leila Martins', 456, 'CASA', 4),
('Mariana', 'mariana@gmail.com', '896.885.100-09', '01-07-1998', 'Jaboatão', 'Rua Lucas Tavares', 54, 'APARTAMENTO', 4),
('Monique', 'monique@gmail.com', '499.208.940-28', '15-07-1993', 'Camaragibe',  'Rua Inâcio Monteiro', 34, 'CASA', 7),
('Joaquim', 'joaquim@hotmail.com', '499.208.940-28', '01-05-1994', 'Jaboatão',  'Rua Arsênio Geraldo', 65, 'APARTAMENTO', 3),
('Sandro', 'sandro@gmail.com', '499.208.940-28', '01-05-1996', 'Camaragibe',  'Rua Beberibe', 78, 'APARTAMENTO', 5),
('Henrique', 'henrique@gmail.com', '648.469.800-73', '07-07-1995', 'Jaboatão', 'Rua das Tamaras', 18, 'CASA', 6),
('Maria', 'maria@gmail.com', '958.369.410-09', '07-07-1995', 'Jaboatão', 'Rua Welligton', 129, 'CASA', 7),
('Penha', 'penha@gmail.com', '640.070.730-15', '07-07-1988', 'Jaboatão', 'Rua Lula', 85, 'CASA', 3);