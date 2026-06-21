CREATE DATABASE curamed;

CREATE TABLE cliente (
    id_cliente SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE fornecedor (
    id_fornecedor SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE produto (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    validade DATE,
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

CREATE TABLE venda (
    id_venda SERIAL PRIMARY KEY,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10,2),
    id_cliente INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente)
);

CREATE TABLE item_venda (
    id_item SERIAL PRIMARY KEY,
    quantidade INT NOT NULL,
    valor_unitario DECIMAL(10,2),
    id_venda INT,
    id_produto INT,
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

INSERT INTO cliente (nome, cpf, telefone)
VALUES ('João Silva', '123.456.789-00', '48999999999');

INSERT INTO fornecedor (nome, cnpj, telefone)
VALUES ('MedSupply Ltda', '12.345.678/0001-99', '4833333333');

INSERT INTO produto (nome, preco, estoque, validade, id_fornecedor)
VALUES ('Seringa 10ml', 2.50, 100, '2027-01-01', 1);

INSERT INTO venda (data_venda, valor_total, id_cliente)
VALUES ('2026-06-21', 50.00, 1);

INSERT INTO item_venda (quantidade, valor_unitario, id_venda, id_produto)
VALUES (10, 2.50, 1, 1);