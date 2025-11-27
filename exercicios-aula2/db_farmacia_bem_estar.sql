CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2) NOT NULL,
quantidade INT NOT NULL,
data_chegada DATE NOT NULL,
categorias_id BIGINT, FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo,descricao) VALUES
('Analgésicos', 'Medicamentos para aliviar dores.'),
('Antibióticos', 'Medicamentos para tratar infecções.'),
('Vitaminas', 'Suplementos para complementar a dieta.'),
('Antialérgicos', 'Medicamentos para sintomas de alergia.'),
('Higiene Pessoal', 'Produtos para cuidados e limpeza pessoal.');

INSERT INTO tb_produtos (nome, preco, quantidade, data_chegada, categorias_id) VALUES
('Paracetamol 500mg', 12.50, 50, '2025-11-27', 1),
('Ibuprofeno 400mg', 15.00, 30, '2025-11-25', 1),
('Amoxicilina 500mg', 55.00, 20, '2025-11-26', 2),
('Azitromicina 500mg', 51.00, 15, '2025-11-24', 2),
('Vitamina C 1000mg', 18.00, 40, '2025-11-23', 3),
('Complexo B', 22.00, 35, '2025-11-22', 3),
('Loratadina 10mg', 20.00, 25, '2025-11-27', 4),
('Sabonete Líquido', 2.50, 60, '2025-11-21', 5);


SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 60;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.quantidade
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id;

SELECT tb_produtos.nome, tb_categorias.tipo
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categorias_id = tb_categorias.id
WHERE tb_categorias.id = 2;