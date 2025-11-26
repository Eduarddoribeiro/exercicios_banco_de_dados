CREATE DATABASE db_loja;

USE db_loja;

CREATE TABLE tb_produtos(
id BIGINT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
preco DECIMAL(6,2),
marca VARCHAR(255),
categoria VARCHAR(255),
quantidade INT
);

INSERT INTO tb_produtos (nome,preco,marca,categoria,quantidade) VALUES
('Notebook', 5490, 'Dell', 'Eletrônicos', 4),
('Ventilador', 200, 'Mondial', 'Eletrodomésticos', 1),
('Ar Condicionado', 3990, 'Philco', 'Eletrodomésticos', 29),
('Monitor', 540, 'Samsung', 'Eletrônicos', 5),
('Iphone', 12000, 'Apple', 'Eletrônicos', 9),
('Teclado Mecânico', 250, 'Redragon', 'Eletrônicos', 4),
('Mouse', 190, 'Logitech', 'Eletrônicos', 8),
('Webcam', 40, 'Amazon', 'Eletrônicos', 19);


-- Produtos com valor maior que 500
SELECT * FROM tb_produtos WHERE preco > 500;

-- Produtos com valor menor que 500
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos 
SET preco = 600 
WHERE id = 4;