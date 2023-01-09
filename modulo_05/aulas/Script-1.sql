SELECT count(*)
FROM funcionario f 
WHERE sexo = 'M'


SELECT *
FROM funcionario f 
ORDER BY data_nascimento DESC


SELECT *
FROM funcionario f 
WHERE salario > 4000
AND date_part('year', data_nascimento) < '1995' 


SELECT *
FROM funcionario f 
ORDER BY salario DESC


SELECT max(salario)
FROM funcionario f 


SELECT min(salario)
FROM funcionario f 


SELECT avg(salario)
FROM funcionario f 


SELECT round(avg(salario), 2)
FROM funcionario f 


SELECT	* FROM departamento d;

SELECT DISTINCT departamento_id FROM funcionario f 


SELECT *
FROM funcionario f 
