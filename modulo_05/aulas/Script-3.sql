1) Quanto custa o maior produto não catalogado

SELECT 
max(preco) 
FROM produtos AS p
LEFT JOIN categorias as c 
ON p.id_categoria = c.id
WHERE p.id_categoria ISNULL


2) Forneça apenas a categoria sem produtos

SELECT 
c.id,c.nome 
FROM produtos AS p
RIGHT   JOIN categorias as c 
ON p.id_categoria = c.id
WHERE p.id_categoria ISNULL


3) Qual a média de preço de todos os produtos por catálogo

SELECT 
round(avg(preco),2), id_categoria 
FROM produtos p 
GROUP BY id_categoria 


4) Forneça todos os mouses com o catálogo e seus preços (independente de ele ser catalogado ou não)

SELECT id_categoria , descricao 
FROM produtos p 
WHERE upper(descricao)  LIKE '%MOUSE%'


5) Qual a soma da televisão e do Playstation mais caros, contudo, apenas dos produtos com preço maior que 1500. Informe o nome da sua categoria

WITH  mais_caro  AS (
SELECT
max(preco) AS maior_preco,
id_categoria 
FROM produtos p 
WHERE preco > 1500 AND (id_categoria = 4 OR id_categoria = 3 )
GROUP BY id_categoria   
)
SELECT sum(maior_preco)  FROM mais_caro


6) Forneça qual o maior preço por categoria, trazendo a categoria do produto e a sua descrição. Apenas produtos categorizados (Pergunta do Kaio)

WITH tabela06 AS(
SELECT 
	max(preco) AS maior_preco,
	c.nome AS categoria
	FROM produtos AS p
	INNER  JOIN categorias as c 
	ON p.id_categoria = c.id
GROUP BY c.nome
)
SELECT *
FROM tabela06
	CASE maior_preco = p.preco  WHEN p.descricao
	ELSE	

7) Fez-se uma análise no banco e percebeu que os dois produtos não catalogados são da categoria informática, faça um query que retorne esses produtos catalogados como informática. 
8) Deseja saber a média de preço de celulares da samsung e iphone como um total, ou seja, independente do modelo do Iphone ele ainda é um Iphone

As duas últimas questões fazem referência às tabelas  funcionário e departamento:

9) Crie uma view que traga o sexo do funcionario e sua media salarial, por nome de departamento. Contudo, traga apenas os homens que nasceram em maio e as 
mulheres que nasceram em julho
10) Crie uma view que traga o nome do departamento, sexo dos funcionarios
 e a contagem dos funcionários. Contudo, apenas os departamentos que tenham a letra 'd' e seus respectivos funcionários sejam mulheres que usam gmail e homens que usam email. Alem disso traga apenas os departamentos seu respecivo sexo que a contagem de funcionario seja maior que 1

 
 SELECT * 
 FROM categorias c 