SELECT 
*
FROM produtos AS p
JOIN categorias as c 
ON p.id_categoria = c.id

--  MAIOR PREÇO POR CATEGORIA
SELECT 
	max(p.preco) AS maior_preco,
	c.nome AS categoria
	FROM produtos AS p
	INNER JOIN categorias AS c 
	ON p.id_categoria = c.id
	GROUP BY c.nome


--

SELECT 
	max(p.preco) AS maior_preco,
	min(p.preco) AS menor_preco, 
	c.nome AS categoria
	FROM produtos AS p
	INNER JOIN categorias AS c 
	ON p.id_categoria = c.id	
WHERE c.nome = 'Games' OR
c.nome = 'Telefonia'
GROUP BY c.nome
