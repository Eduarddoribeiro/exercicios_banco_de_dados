CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
tamanho VARCHAR(255)NOT NULL,
tipo VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(255) NOT NULL,
massa VARCHAR(255),
preco DECIMAL(5,2) NOT NULL,
temperatura INT,
categorias_id BIGINT, FOREIGN KEY (categorias_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias(tamanho, tipo) VALUES
('Pequena', 'Doce'),
('Media', 'Doce'),
('Grande', 'Salgada'),
('Família', 'Salgada'),
('Media', 'Salgada');

INSERT INTO tb_pizzas(sabor, massa, preco, temperatura, categorias_id) VALUES
('Estrogonofe', 'Caseira', 49.90, 180, 3),
('Calabresa', 'Caseira', 79.90, 180, 4),
('Prestigio', 'Caseira', 39.90, 180, 1),
('Charge', 'Caseira', 54.90, 180, 2),
('6 queijos', 'Caseira', 49.90, 180, 3),
('Basca', 'Caseira', 79.90, 180, 4),
('Coração', 'Caseira', 48.90, 180, 5),
('Kinder bueno', 'Caseira', 49.90, 180, 1);

SELECT * FROM tb_pizzas;
SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas WHERE preco	> 45;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;
SELECT * FROM tb_pizzas WHERE sabor LIKE '%M%';

SELECT tb_pizzas.sabor, tb_pizzas.preco, tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id;

SELECT tb_pizzas.sabor, tb_categorias.tipo
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categorias_id = tb_categorias.id
WHERE tb_categorias.id = 3;