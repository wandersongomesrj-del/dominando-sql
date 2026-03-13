-- 1. Limpeza do ambiente (DROP)
DROP TABLE IF EXISTS PEDIDOS;
DROP TABLE IF EXISTS PRODUTOS;
DROP TABLE IF EXISTS VENDEDORES;
DROP TABLE IF EXISTS CLIENTES;

-- 2. Criação das Tabelas (CREATE)

-- Criação da tabela de Produtos
CREATE TABLE produtos (
    id INT PRIMARY KEY,
    nome TEXT,
    categoria TEXT,
    preco_unitario DECIMAL(10,2),
    estoque INT
);

INSERT INTO produtos VALUES 
(1, 'Teclado Mecânico', 'Periféricos', 250.00, 15),
(2, 'Mouse Gamer', 'Periféricos', 120.00, 0),
(3, 'Monitor 24pol', 'Monitores', 890.00, 8),
(4, 'Cabo HDMI 2m', 'Acessórios', 45.00, 50),
(5, 'Cadeira Office', 'Móveis', 1200.00, 3),
(6, 'Webcam HD', 'Periféricos', 310.00, 12),
(7, 'Notebook Pro', 'Computadores', 5500.00, 5),
(8, 'Headset USB', 'Áudio', 180.00, 20),
(9, 'Mesa Digitalizadora', 'Periféricos', 450.00, 7),
(10, 'SSD 512GB', 'Hardware', 290.00, 25),
(11, 'Suporte Monitor', 'Acessórios', 130.00, 10),
(12, 'Luminária LED', 'Acessórios', 85.00, 0);

-- Criação da tabela de Clientes
CREATE TABLE clientes (
    id_cliente INT PRIMARY KEY,
    nome_completo TEXT,
    cidade TEXT,
    estado TEXT,
    tipo_plano TEXT
);

INSERT INTO clientes VALUES 
(101, 'Ana Silva', 'São Paulo', 'SP', 'Gold'),
(102, 'Bruno Costa', 'Curitiba', 'PR', 'Silver'),
(103, 'Carla Souza', 'São Paulo', 'SP', 'Free'),
(104, 'Daniel Oliveira', 'Rio de Janeiro', 'RJ', 'Gold'),
(105, 'Eduardo Lima', 'Belo Horizonte', 'MG', 'Silver'),
(106, 'Fernanda Dias', 'Porto Alegre', 'RS', 'Gold'),
(107, 'Gabriel Santos', 'São Paulo', 'SP', 'Free'),
(108, 'Helena Rocha', 'Salvador', 'BA', 'Silver'),
(109, 'Igor Mendes', 'Recife', 'PE', 'Gold'),
(110, 'Julia Castro', 'Curitiba', 'PR', 'Free'),
(111, 'Kevin Nunes', 'Rio de Janeiro', 'RJ', 'Silver'),
(112, 'Larissa Melo', 'São Paulo', 'SP', 'Gold');

-- Criação da tabela de Pedidos
CREATE TABLE pedidos (
    num_pedido INT PRIMARY KEY,
    data_pedido DATE,
    id_cliente INT,
    valor_total DECIMAL(10,2),
    status TEXT
);

INSERT INTO pedidos VALUES 
(5001, '2024-01-05', 101, 250.00, 'ENTREGUE'),
(5002, '2024-01-10', 104, 1200.00, 'ENVIADO'),
(5003, '2024-01-12', 102, 45.00, 'ENTREGUE'),
(5004, '2024-01-15', 109, 5500.00, 'PROCESSANDO'),
(5005, '2024-01-18', 103, 120.00, 'CANCELADO'),
(5006, '2024-01-20', 112, 310.00, 'ENTREGUE'),
(5007, '2024-01-22', 105, 890.00, 'ENVIADO'),
(5008, '2024-01-25', 108, 130.00, 'ENTREGUE'),
(5009, '2024-01-26', 111, 290.00, 'PROCESSANDO'),
(5010, '2024-01-28', 106, 180.00, 'ENTREGUE'),
(5011, '2024-01-30', 107, 450.00, 'CANCELADO'),
(5012, '2024-02-03', 103, 257.00, 'CANCELADO'),
(5013, '2024-02-05', 110, 85.00, 'ENVIADO');

-- Criação da tabela de Vendedores
CREATE TABLE vendedores (
    id_vendedor INT PRIMARY KEY,
    nome_vendedor TEXT,
    regiao TEXT,
    vendas_mes INT,
    meta_atingida TEXT
);

INSERT INTO vendedores VALUES 
(1, 'Ricardo', 'Sudeste', 45, 'SIM'),
(2, 'Marcia', 'Sul', 28, 'NAO'),
(3, 'Roberto', 'Sudeste', 52, 'SIM'),
(4, 'Aline', 'Nordeste', 33, 'SIM'),
(5, 'Jose', 'Centro-Oeste', 19, 'NAO'),
(6, 'Beatriz', 'Sudeste', 60, 'SIM'),
(7, 'Carlos', 'Sul', 41, 'SIM'),
(8, 'Daniela', 'Nordeste', 25, 'NAO'),
(9, 'Fabio', 'Norte', 12, 'NAO'),
(10, 'Gisele', 'Sudeste', 38, 'SIM'),
(11, 'Hugo', 'Sul', 22, 'NAO'),
(12, 'Ivone', 'Nordeste', 50, 'SIM');