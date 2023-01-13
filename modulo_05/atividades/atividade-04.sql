SELECT
	alunos.*,
	cursos.curso,
	cursos.mensalidade,
	modulos.disciplina 
FROM alunos 
INNER JOIN matriculas
	ON alunos.id = matriculas.aluno_id
INNER JOIN cursos 
	ON matriculas.curso_id = cursos.id
INNER JOIN matriz_curricular mc
	ON cursos.id = mc.curso_id
INNER JOIN modulos
	ON mc.modulo_id = modulos.id
ORDER BY alunos.id, cursos.curso, modulos.disciplina 
