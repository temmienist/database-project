-- Pesquisa pelo código do aluno todas as suas informações --
SELECT * FROM aluno WHERE cod_aluno = 401;

-- Pesquisa o nome do curso e noma da disciplina associada a ela --
SELECT c.nome_curso, d.nome_dcp
FROM CURSO c
JOIN CURSO_DISCIPLINA cd ON c.cod_curso = cd.cod_curso
JOIN DISCIPLINA d ON cd.cod_dcp = d.cod_dcp;

-- Listar todos os professores e seus departamentos --
SELECT PROFESSOR.*, DEPARTAMENTO.nome_dpt
FROM PROFESSOR
JOIN DEPARTAMENTO ON PROFESSOR.cod_dpt = DEPARTAMENTO.cod_dpt;

-- Consultar o histórico de um aluno em específico --
SELECT HISTORICO.*, DISCIPLINA.nome_dcp
FROM HISTORICO
JOIN DISCIPLINA ON HISTORICO.cod_dcp = DISCIPLINA.cod_dcp
WHERE HISTORICO.cod_aluno = 401;

-- Obter as disciplinas lecionadas por um professor e sua carga horária --
SELECT DISCIPLINA.*
FROM PROF_DISCIPLINA
JOIN DISCIPLINA ON PROF_DISCIPLINA.cod_dcp = DISCIPLINA.cod_dcp
WHERE PROF_DISCIPLINA.cod_prof = 101;

-- Consultar todas as disciplinas de um departamento -- 
SELECT DISCIPLINA.*
FROM CURSO
JOIN CURSO_DISCIPLINA ON CURSO.cod_curso = CURSO_DISCIPLINA.cod_curso
JOIN DISCIPLINA ON CURSO_DISCIPLINA.cod_dcp = DISCIPLINA.cod_dcp
WHERE CURSO.cod_dpt = 1;

-- Obter a nota geral de um aluno em todas as disciplinas --
SELECT DISC_HIST.nota, DISCIPLINA.nome_dcp
FROM DISC_HIST
JOIN HISTORICO ON DISC_HIST.cod_historico = HISTORICO.cod_historico
JOIN DISCIPLINA ON DISC_HIST.cod_dcp = DISCIPLINA.cod_dcp
WHERE HISTORICO.cod_aluno = 401;

-- Listar todas as disciplinas que não estão associadas a algum curso --
SELECT DISCIPLINA.*
FROM DISCIPLINA
LEFT JOIN CURSO_DISCIPLINA ON DISCIPLINA.cod_dcp = CURSO_DISCIPLINA.cod_dcp
WHERE CURSO_DISCIPLINA.cod_dcp IS NULL;

-- Consulta para que cada disciplina tenha no máximo 30 alunos por turma --

SELECT cod_dcp, COUNT(DISTINCT cod_turma) AS num_turmas
FROM ALUNO
GROUP BY cod_dcp
HAVING num_turmas > 30;

-- Em cada semestre, cada aluno pode se matricular em no máximo 8 disciplinas --
 
SELECT cod_aluno, COUNT(DISTINCT cod_dcp) AS num_disciplinas
FROM HISTORICO
GROUP BY cod_aluno
HAVING num_disciplinas > 8;

-- O aluno só pode ser reprovado no máximo 5 vezes na mesma disciplina --

SELECT cod_aluno, cod_dcp, COUNT(*) AS num_reprovacoes
FROM HISTORICO
WHERE notas < 6
GROUP BY cod_aluno , cod_dcp
HAVING num_reprovacoes > 5;
