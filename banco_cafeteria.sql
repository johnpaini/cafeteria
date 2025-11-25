-- Modelo Conceitual 
-- Tabela produtos

-- Campo	Tipo	Descrição
-- id	INT (PK)	Identificador único do produto
-- nome	VARCHAR(100)	Nome do produto
-- preco	DECIMAL(10,2)	Preço do item
-- categoria	VARCHAR(50)	Categoria, ex.: bebida, doce

-- Tabela pedidos

-- Campo	Tipo	Descrição
-- id	INT (PK)	Identificador único do pedido
-- produto_id	INT (FK)	Referência ao produto
-- quantidade	INT	Quantidade solicitada
-- data_pedido	DATE	Data do pedido


-- Criando  Tabela produtos

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL
);

-- Criando  Tabela pedidos 
CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

-- INSERE DADOS EM PRODUTOS
INSERT INTO produtos (nome, preco, categoria) VALUES 
('Café Expresso', 5.50, 'Bebida'),
('Cappuccino', 8.90, 'Bebida'),
('Pão Caseiro', 15.00, 'Padaria');

-- INSERE DADOS EM  PEDIDOS
INSERT INTO pedidos (produto_id, quantidade, data_pedido) VALUES
(1, 2, '2025-11-10'),
(3, 1, '2025-11-10'),
(2, 3, '2025-11-11');