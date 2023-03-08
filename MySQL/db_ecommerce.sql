-- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE db_ecommerce;

-- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE tb_loja(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR(255),
	preco DECIMAL(6,2),
    marca VARCHAR(255),
    tamanho VARCHAR (3),
    cor VARCHAR (255)
    );
    
    SELECT * FROM tb_loja;
    
    -- Insira nesta tabela no mínimo 8 dados (registros).
    INSERT INTO tb_loja (nome_produto, preco, marca,tamanho,cor) VALUES ("Tênis Jordan 3", 2000.00, "Nike", "39","Preto e Vermelho"),("Tênis Dunk Low Retro",800.00, "Nike", "39","Bordô"), ("Tênis Web Boost",900.00, "Adidas", "40","Cinza"),("Tênis Yeezy Boost 350",2000.00, "Adidas", "38","Preto"),("Chinelo Nike Victori One",100.00, "Nike", "37","Azul"),("Tênis Nmd R1",1000.00, "Adidas", "39","Preto"),("Tênis Lacoste Lerond",800.00, "Nike", "39","Branco"),("Tênis Oakley Stratus",650.00, "Nike", "39","Branco");
    
    -- Atualiza preço do ID 1
    UPDATE tb_loja SET preco = 2000.00 WHERE id = 1;
    
    -- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
    SELECT * FROM tb_loja WHERE preco > 500;
    
    -- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
    SELECT * FROM tb_loja WHERE preco < 500;