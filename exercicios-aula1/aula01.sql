CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    data_validade DATE,
    preco DECIMAL(6,2)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco) VALUES 
('Manga', 40, '2025-11-26', 4.70),
('Laranja', 100, '2025-11-26', 2.60);

DESCRIBE tb_produtos;

-- Selecionando dados da Tabela

SELECT nome, preco from tb_produtos;

SELECT * FROM tb_produtos WHERE id = 1 AND preco = 4.70;

SELECT * FROM tb_produtos WHERE nome in ("1","3");

SELECT * FROM tb_produtos WHERE preco > 4 OR quantidade < 30;

-- Modificando a Estrutura da Tabela

ALTER TABLE tb_produtos ADD descricao VARCHAR(255);

ALTER TABLE tb_produtos MODIFY preco DECIMAL(6,2) NOT NULL;

-- Atualizando dados na Tabela

UPDATE tb_produtos SET preco = 1.00;

SET SQL_SAFE_UPDATES = 0;

-- Apagar DDL

