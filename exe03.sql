CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes (
id BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
nota DECIMAL(2,1),
data_nascimento DATE,
turma INT,
turno VARCHAR(255)
);

INSERT INTO tb_estudantes (nome,nota,data_nascimento,turma,turno) VALUES
('José', 7, '2010-08-12', 5, 'Manhã'),
('Bianca', 8.5, '2010-12-02', 5, 'Manhã'),
('Natalia', 7.9, '2007-09-17', 1, 'Manhã'),
('Luisa', 7.7, '2012-11-12', 3, 'Manhã'),
('Eduardo', 10, '2009-01-22', 302, 'Manhã'),
('Miguel', 5, '2010-08-12', 4, 'Manhã'),
('Henrique', 3.5, '2010-03-12', 501, 'Manhã'),
('Pedro', 9, '2010-08-14', 205, 'Manhã');

-- Alunos com nota maior que 7
SELECT * FROM tb_estudantes WHERE nota > 7;

-- Alunos com nota menor que 7
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes
SET turno = 'Tarde'
WHERE id = 5;