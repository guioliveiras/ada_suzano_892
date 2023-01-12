CREATE TABLE modulos (
	id INT NOT NULL GENERATED ALWAYS AS IDENTITY (INCREMENT BY 1),
	disciplina varchar(50) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE matriz_curricular (
	id int NOT NULL generated always as identity (increment by 1),
	curso_id int NOT NULL,
	modulo_id int NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (modulo_id) REFERENCES modulos(id),
	FOREIGN KEY (curso_id) REFERENCES cursos(id)
);

INSERT INTO	 modulos (disciplina) VALUES
('Logica de Programacao'),
('Tecnicas de Programacao'),
('Git'),
('GitHub'),
('Analise de Dados'),
('Banco de Dados'),
('Visualizacao de Dado'),
('Fundamentos de JavaScript'),
('Orientação a objetos com JavaScript'),
('Fundamentos de CSS'),
('Fundamentos de Assembly');


INSERT INTO matriz_curricular (curso_id,modulo_id) VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),
(2,1),(2,2),(2,3),(2,4),(2,6),
(3,1),(3,2),(3,3),(3,4),
(4,1),(4,2),(4,3),(4,4),(4,8),(4,9),
(5,1),(5,2),(5,3),(5,4),(5,10),
(6,1),(6,2),(6,3),(6,4),
(7,1),(7,2),(7,3),(7,4),(7,11);