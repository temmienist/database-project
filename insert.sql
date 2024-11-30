INSERT INTO DEPARTAMENTO (cod_dpt, nome_dpt) VALUES
    (1, 'Departamento A'),
    (2, 'Departamento B'),
    (3, 'Departamento C'),
    (4, 'Departamento D'),
    (5, 'Departamento E'),
    (6, 'Departamento F'),
    (7, 'Departamento G'),
    (8, 'Departamento H'),
    (9, 'Departamento I'),
    (10, 'Departamento J');
    
   
INSERT INTO PROFESSOR (cod_prof, nome_prof, cod_dpt) VALUES
    (101, 'Professor 1', 1),
    (102, 'Professor 2', 2),
    (103, 'Professor 3', 3),
    (104, 'Professor 4', 4),
    (105, 'Professor 5', 5),
    (106, 'Professor 6', 6),
    (107, 'Professor 7', 7),
    (108, 'Professor 8', 8),
    (109, 'Professor 9', 9),
    (110, 'Professor 10', 0);

INSERT INTO DISCIPLINA (cod_dcp, nome_dcp, carga_hora) VALUES
    (1001, 'Disciplina 1', 60),
    (1002, 'Disciplina 2', 45),
    (1003, 'Disciplina 3', 70),
    (1004, 'Disciplina 4', 90),
    (1005, 'Disciplina 5', 50),
    (1006, 'Disciplina 6', 70),
    (1007, 'Disciplina 7', 80),
    (1008, 'Disciplina 8', 70),
    (1009, 'Disciplina 9', 90),
    (1010, 'Disciplina 0', 60);
   
INSERT INTO CURSO (cod_curso, nome_curso, cod_dpt) VALUES
    (201, 'Curso 1', 1),
    (202, 'Curso 2', 2),
    (203, 'Curso 3', 3),
    (204, 'Curso 4', 4),
    (205, 'Curso 5', 5),
    (206, 'Curso 6', 6),
    (207, 'Curso 7', 7),
    (208, 'Curso 8', 8),
    (209, 'Curso 9', 9),
    (210, 'Curso 0', 10);

INSERT INTO TURMA (cod_turma, periodo, num_alunos, data_inicio, data_fim, cod_curso) VALUES
    (301, '2023A', 30, '2023-01-01', '2023-06-30', 201),
    (302, '2023B', 27, '2023-07-01', '2023-12-31', 202),
    (303, '2024A', 18, '2024-01-01', '2024-06-30', 203),
    (304, '2024B', 21, '2024-07-01', '2024-12-31', 204),
    (305, '2025A', 26, '2025-01-01', '2025-06-30', 205),
    (306, '2025B', 19, '2025-07-01', '2025-12-31', 206),
    (307, '2026A', 30, '2026-01-01', '2026-06-30', 207),
    (308, '2026B', 30, '2026-07-01', '2026-12-31', 208),
    (309, '2027A', 28, '2027-01-01', '2027-06-30', 209),
    (310, '2027B', 10, '2027-07-01', '2027-12-31', 210);

INSERT INTO ALUNO (cod_aluno, cpf, contato, telefone, nome_aluno, email, Rua, CEP, Numero, Bairro, sexo, cod_curso, cod_turma) VALUES
    (401, 11111111111, 'Contato 1', 123456789, 'Aluno 1', 'aluno1@email.com', 'Rua 1', '12345-111', 111, 'Bairro 1', 'M', 201, 301),
    (402, 22222222222, 'Contato 2', 987654321, 'Aluno 2', 'aluno2@email.com', 'Rua 2', '12345-222', 222, 'Bairro 2', 'F', 202, 302),
    (403, 33333333333, 'Contato 3', 123456789, 'Aluno 3', 'aluno3@email.com', 'Rua 3', '12345-333', 333, 'Bairro 3', 'M', 203, 303),
    (404, 44444444444, 'Contato 4', 123456789, 'Aluno 4', 'aluno4@email.com', 'Rua 4', '12345-444', 444, 'Bairro 4', 'F', 204, 304),
    (405, 55555555555, 'Contato 5', 123456789, 'Aluno 5', 'aluno5@email.com', 'Rua 5', '12345-555', 555, 'Bairro 5', 'F', 205, 305),
    (406, 66666666666, 'Contato 6', 123456789, 'Aluno 6', 'aluno6@email.com', 'Rua 6', '12345-666', 666, 'Bairro 6', 'M', 206, 306),
    (407, 77777777777, 'Contato 7', 123456789, 'Aluno 7', 'aluno7@email.com', 'Rua 7', '12345-777', 777, 'Bairro 7', 'M', 207, 307),
    (408, 88888888888, 'Contato 8', 123456789, 'Aluno 8', 'aluno8@email.com', 'Rua 8', '12345-888', 888, 'Bairro 8', 'F', 208, 308),
    (409, 99999999999, 'Contato 9', 123456789, 'Aluno 9', 'aluno9@email.com', 'Rua 9', '12345-999', 999, 'Bairro 9', 'M', 209, 309),
    (410, 00000000000, 'Contato 0', 123456789, 'Aluno 0', 'aluno0@email.com', 'Rua 0', '12345-000', 000, 'Bairro 0', 'F', 210, 310);

INSERT INTO HISTORICO (cod_historico, notas, periodo_realizacao, frequencia, media, cod_aluno, cod_dcp) VALUES
    (501, 80, '2023A', 90, 85.5, 401, 1001),
    (502, 75, '2023B', 88, 81.0, 402, 1002),
    (503, 60, '2023A', 70, 60.0, 403, 1003),
    (504, 40, '2023B', 50, 40.0, 404, 1004),
    (505, 12, '2023A', 90, 60.5, 405, 1005),
    (506, 98, '2023B', 00, 70.5, 406, 1006),
    (507, 77, '2023B', 85, 20.5, 407, 1007),
    (508, 54, '2023A', 90, 80.5, 408, 1008),
    (509, 32, '2023B', 92, 60.0, 409, 1009),
    (510, 43, '2023A', 70, 40.2, 410, 1010);

INSERT INTO DISC_HIST (nota, frequencia, cod_historico, cod_dcp) VALUES
    (85.5, 90, 501, 1001),
    (81.0, 88, 502, 1002),
    (60.0, 70, 503, 1003),
    (40.0, 50, 504, 1004),
    (60.5, 90, 505, 1005),
    (70.5, 00, 506, 1006),
    (20.5, 85, 507, 1007),
    (80.5, 90, 508, 1008),
    (60.0, 92, 509, 1009),
    (40.2, 70, 510, 1010);

INSERT INTO CURSO_DISCIPLINA (cod_curso, cod_dcp) VALUES
    (201, 1001),
    (202, 1002),
    (203, 1003),
    (204, 1004),
    (205, 1005),
    (206, 1006),
    (207, 1007),
    (208, 1008),
    (209, 1009),
    (210, 1010);

INSERT INTO PROF_DISCIPLINA (cod_prof, cod_dcp) VALUES
    (101, 1001),
    (102, 1002),
    (103, 1003),
    (104, 1004),
    (105, 1005),
    (106, 1006),
    (107, 1007),
    (108, 1008),
    (109, 1009),
    (110, 1010);
