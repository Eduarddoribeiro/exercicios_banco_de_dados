CREATE DATABASE db_empresa;

USE db_empresa;

CREATE TABLE tb_colaboradores (
id BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255),
salario DECIMAL(10,2),
senioridade VARCHAR(255),
setor VARCHAR(255)
);

INSERT INTO tb_colaboradores (nome, cargo, salario, senioridade, setor) VALUES
('Carlos Eduardo', 'Analista de Dados', 3500, 'Junior', 'Tecnologia'),
('Arthur', 'Desenvolvedor Mobile', 2800, 'Junior', 'Tecnologia'),
('João', 'Desenvolvedor Java', 5500, 'Pleno', 'Tecnologia'),
('Eduarda', 'Desenvolvedora Frontend', 10000, 'Senior', 'Tecnologia'),
('Kaylane', 'Gestora de projetos', 12000, 'Senior', 'Tecnologia');

DESCRIBE tb_colaboradores;

-- Salários maiores que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

-- Salários menores que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualização de registro

UPDATE tb_colaboradores SET salario = 4000 WHERE nome = 'Arthur';

SELECT * FROM tb_colaboradores;
