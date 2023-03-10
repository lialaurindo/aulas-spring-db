-- 🍕 Cria e acessa database para a Pizzaria.
CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

-- 🍕 Crie a tabela tb_categorias (c/ 2 atributos), além da Chave Primária, relevantes para classificar as pizzas.
CREATE TABLE tb_categorias (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	tipo_pizza VARCHAR(255),
	tamanho VARCHAR(255)
);

-- 🍕 Crie a tabela tb_pizzas (c/ 4 atributos), além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_pizzas (
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	nome_pizza VARCHAR(255),
	ingredientes VARCHAR(255),
	preco DECIMAL(6,2),
	borda VARCHAR(50),
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias (id)
);

-- 🍕 Insira 5 registros em tb_categorias.
INSERT INTO tb_categorias(tipo_pizza, tamanho) VALUES 
("Salgada", "Grande"),
("Salgada","Média"),
("Salgada","Pequena"),
("Doce", "Grande"), 
("Doce","Média"),
("Doce","Pequena");

SELECT * FROM tb_categorias;

-- 🍕 Insira 8 registros em tb_pizzas, com Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_pizzas(nome_pizza, ingredientes, preco, borda) VALUES 
("Frango com Catupiry Premium", "Molho de tomate, frango desfiado, catupiry, orégano", 85, "borda recheada", 1),
("Portuguesa Premium", "molho de tomate, presunto, ovos, cebola, mussarela, azeitonas, orégano", 85.00, "borda recheada", 1),
("Toscana", "molho de tomate, mussarela, calabresa curada moída, orégano", 55.00, "borda tradicional", 3),
("Quatro queijos", "mussarela, provolone, parmesão, catupiry, azeitonas", 70.00, "borda tradicional", 2),
("Brigadeiro", "brigadeiro, chocolate granulado, morangos", 45.00, "borda tradicional", 6),
("ChocoBan", "brigadeiro, banana, leite condensado", 45.00, "borda tradicional",6),
("Banana", "banana, leite condensado, canela em pó", 60.00, "borda tradicional",5),
("Dois Amores", "mussarela, chocolate ao leite, chocolate branco", 70.00, "borda tradicional", 4);

-- 🍕 Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE preco <= 45.00;

-- 🍕 Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- 🍕 Faça um SELECT com LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT nome FROM tb_pizzas WHERE nome LIKE "M%";

-- 🍕 Faça um SELECT com INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT * from tb_pizzas INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id;

-- 🍕 Faça um SELECT com INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias. 
-- (Exemplo: Todas as pizzas que são doce).
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.tipo_pizza = "Doce";