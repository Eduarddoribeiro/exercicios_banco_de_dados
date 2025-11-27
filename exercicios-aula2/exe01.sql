CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255)
);

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255) NOT NULL,
poder_defesa INT NOT NULL,
poder_ataque INT NOT NULL,
nivel INT NOT NULL,
classe_id BIGINT,
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, tipo, descricao) VALUES
('Guerreiro', 'Força', 'Alta resistência e dano físico.'),
('Mago', 'Magia', 'Ataques mágicos de longo alcance.'),
('Arqueiro', 'Distância', 'Ataques rápidos de longa distância.'),
('Assassino', 'Ágil', 'Alta velocidade e dano crítico.'),
('Tanque', 'Defesa', 'Enorme resistência e proteção.');

INSERT INTO tb_personagens (nome, poder_defesa, poder_ataque, nivel, classe_id) VALUES
('Jason Voorhees', 1500, 2500, 45, 4),
('Freddy Krueger', 1200, 2700, 50, 4),
('Michael Myers', 1300, 2600, 40, 4),
('Leatherface', 1100, 2400, 38, 4),
('Chucky', 900, 2100, 25, 4),
('Ghostface', 800, 1900, 20, 4),
('Pennywise', 2000, 3500, 100, 2),
('Samara Morgan', 1700, 2300, 16, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
SELECT tb_personagens.nome,
       tb_personagens.poder_ataque,
       tb_personagens.poder_defesa,
       tb_classes.nome AS classe,
       tb_classes.tipo
FROM tb_personagens
INNER JOIN tb_classes 
ON tb_personagens.classe_id = tb_classes.id;
SELECT * FROM tb_classes;

SELECT * FROM tb_personagens;
