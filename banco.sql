CREATE DATABASE loja_virtual;

USE loja_virtual;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2),
    imagem VARCHAR(255),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

INSERT INTO categorias(nome)
VALUES
('Sneakers'),
('Roupas'),
('Acessórios');

INSERT INTO produtos(nome, descricao, preco, imagem, categoria_id)
VALUES
('Nike Air Force', 'Tênis clássico urbano', 799.90, 'tenis1.jpg', 1),
('Adidas Forum', 'Sneaker estiloso e confortável', 699.90, 'tenis2.jpg', 1),
('Moletom Street', 'Moletom oversized premium', 249.90, 'moletom.jpg', 2);
