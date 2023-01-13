--1) Liste Id, Nome, Email e Data de nascimento de todos os alunos em ordem alfabética. 
--Formate a data de nascimento no retorno para o formato DD/MM/YYYY (pesquisa a função to_char);

SELECT 
	id,
	nome,
	email,
	to_char(data_nascimento,'DD/MM/YYYY') 
FROM alunos
ORDER BY nome;

--2) Liste todos os estudantes que contenham o dígito 4,5 ou 6 no CPF;

SELECT 
	*
FROM alunos
WHERE cpf LIKE '%4%' 
OR cpf LIKE '%5%'
OR cpf LIKE '%6%'

--3) Liste todos os estudantes que contenham email com a terminação "@hotmail.com" 
--e que nasceram antes do ano 2000 (pesquisa a função DATEPART);

SELECT 
	* 
FROM alunos
WHERE email LIKE '%@hotmail.com'
AND date_part('year',data_nascimento) < 2000;

--4) Obtenha a mensalidade mais cara do curso;

SELECT 
	max(mensalidade) 
FROM cursos;

--5) Obtenha a média das mensalidades do curso;

SELECT 
	round(avg(mensalidade)) 
FROM cursos;

--6) Obtenha a contagem de quantos cursos são mais caros que a média do curso;

SELECT 
	count(id)	
FROM cursos
WHERE 
mensalidade > (SELECT 
			   round(avg(mensalidade)) 
               FROM cursos);

--7) Obtenha a menor mensalidade acima da média das mensalidades;

SELECT
	min(mensalidade) AS menor_mensalidade
FROM cursos
WHERE 
mensalidade > (SELECT 
			   round(avg(mensalidade)) 
               FROM cursos);

--8) Conte quantos alunos possuem complemento no endereço;
        
SELECT 
	count(id) AS sem_complemento
FROM alunos
WHERE endereco NOTNULL;
