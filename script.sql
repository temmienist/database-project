CREATE DATABASE 8121_8137_8142_8149_8150;
USE 8121_8137_8142_8149_8150;

CREATE TABLE DEPARTAMENTO (
    cod_dpt INT PRIMARY KEY NOT NULL,
    nome_dpt CHAR(40) NOT NULL
);

CREATE TABLE PROFESSOR (
    cod_prof INT PRIMARY KEY NOT NULL,
    nome_prof CHAR(40) NOT NULL,
    cod_dpt INT
);
 
CREATE TABLE DISCIPLINA (
    cod_dcp INT PRIMARY KEY NOT NULL,
    nome_dcp CHAR(40) NOT NULL,
    carga_hora INT NOT NULL
);
 
CREATE TABLE CURSO (
    cod_curso INT PRIMARY KEY NOT NULL,
    nome_curso CHAR(40) NOT NULL,
    cod_dpt INT
);
 
CREATE TABLE TURMA (
    cod_turma INT PRIMARY KEY NOT NULL,
    periodo CHAR(40) NOT NULL,
    num_alunos INT NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    cod_curso INT
);
 
CREATE TABLE ALUNO (
    cod_aluno INT PRIMARY KEY NOT NULL,
    cpf DOUBLE NOT NULL,
    contato CHAR(40) NOT NULL,
    telefone INT NOT NULL,
    nome_aluno CHAR(40) NOT NULL,
    email CHAR(40) NOT NULL,
    Rua CHAR(40) NOT NULL,
    CEP CHAR(10) NOT NULL,
    Numero INT NOT NULL,
    Bairro CHAR(40) NOT NULL,
    sexo CHAR(40) NOT NULL,
    cod_curso INT,
    cod_turma INT
);
 
CREATE TABLE HISTORICO (
    cod_historico INT PRIMARY KEY NOT NULL,
    notas INT NOT NULL,
    periodo_realizacao VARCHAR(40) NOT NULL,
    frequencia INT NOT NULL,
    media FLOAT NOT NULL,
    cod_aluno INT,
    cod_dcp INT
);
 
CREATE TABLE DISC_HIST (
    nota FLOAT NOT NULL,
    frequencia INT NOT NULL,
    cod_historico INT,
    cod_dcp INT,
    PRIMARY KEY (cod_historico , cod_dcp)
);

CREATE TABLE CURSO_DISCIPLINA (
    cod_curso INT,
    cod_dcp INT,
    PRIMARY KEY (cod_curso , cod_dcp)
);

CREATE TABLE PROF_DISCIPLINA (
    cod_prof INT,
    cod_dcp INT,
    PRIMARY KEY (cod_prof , cod_dcp)
);

ALTER TABLE PROFESSOR ADD CONSTRAINT FK_PROFESSOR_DEPARTAMENTO
    FOREIGN KEY (cod_dpt)
    REFERENCES DEPARTAMENTO (cod_dpt);

ALTER TABLE DISCIPLINA ADD CONSTRAINT FK_DISCIPLINA_TURMA
    FOREIGN KEY (num_alunos)
    REFERENCES TURMA (num_alunos);

ALTER TABLE CURSO ADD CONSTRAINT FK_CURSO_DEPARTAMENTO
    FOREIGN KEY (cod_dpt)
    REFERENCES DEPARTAMENTO (cod_dpt);

ALTER TABLE TURMA ADD CONSTRAINT FK_TURMA_CURSO
    FOREIGN KEY (cod_curso)
    REFERENCES CURSO (cod_curso);

ALTER TABLE ALUNO ADD CONSTRAINT FK_ALUNO_CURSO
    FOREIGN KEY (cod_curso)
    REFERENCES CURSO (cod_curso);

ALTER TABLE ALUNO ADD CONSTRAINT FK_ALUNO_TURMA
    FOREIGN KEY (cod_turma)
    REFERENCES TURMA (cod_turma);

ALTER TABLE HISTORICO ADD CONSTRAINT FK_HISTORICO_ALUNO
    FOREIGN KEY (cod_aluno)
    REFERENCES ALUNO (cod_aluno);

ALTER TABLE HISTORICO ADD CONSTRAINT FK_HISTORICO_DISCIPLINA
    FOREIGN KEY (cod_dcp)
    REFERENCES DISCIPLINA (cod_dcp);

ALTER TABLE DISC_HIST ADD CONSTRAINT FK_DISC_HIST_HISTORICO
    FOREIGN KEY (cod_historico)
    REFERENCES HISTORICO (cod_historico);

ALTER TABLE DISC_HIST ADD CONSTRAINT FK_DISC_HIST_DISCIPLINA
    FOREIGN KEY (cod_dcp)
    REFERENCES DISCIPLINA (cod_dcp);

ALTER TABLE CURSO_DISCIPLINA ADD CONSTRAINT FK_CURSO_DISCIPLINA_CURSO
    FOREIGN KEY (cod_curso)
    REFERENCES CURSO (cod_curso);

ALTER TABLE CURSO_DISCIPLINA ADD CONSTRAINT FK_CURSO_DISCIPLINA_DISCIPLINA
    FOREIGN KEY (cod_dcp)
    REFERENCES DISCIPLINA (cod_dcp);

ALTER TABLE PROF_DISCIPLINA ADD CONSTRAINT FK_PROF_DISCIPLINA_PROFESSOR
    FOREIGN KEY (cod_prof)
    REFERENCES PROFESSOR (cod_prof);

ALTER TABLE PROF_DISCIPLINA ADD CONSTRAINT FK_PROF_DISCIPLINA_DISCIPLINA
    FOREIGN KEY (cod_dcp)
    REFERENCES DISCIPLINA (cod_dcp);
    
    
