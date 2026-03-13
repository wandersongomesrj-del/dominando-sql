
-- 1. LIMPEZA (Para não dar erro de "tabela já existe")
DROP TABLE IF EXISTS produtos;

-- 2. CRIAÇÃO DA TABELA (O esqueleto)
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    categoria TEXT,
    preco_unitario REAL,
    estoque INTEGER
);

-- 3. CARGA DE DADOS (Popula a tabela para o SELECT funcionar)
INSERT INTO produtos (id, nome, categoria, preco_unitario, estoque) VALUES
(1, 'Monitor 24 Pol', 'Monitores', 899.00, 12),
(2, 'Teclado Mecânico RGB', 'Periféricos', 250.00, 8),
(3, 'Mouse Gamer', 'Periféricos', 120.00, 20),
(4, 'Webcam HD', 'Periféricos', 310.00, 3),
(5, 'Cadeira Ergonômica', 'Móveis', 1200.00, 5),
(6, 'Headset Wireless', 'Periféricos', 450.00, 15),
(7, 'Notebook Pro', 'Computadores', 4500.00, 4),
(8, 'Suporte Monitor', 'Acessórios', 150.00, 10);

-- 4. TESTE FINAL (Para ver se funcionou)
SELECT * FROM produtos;



-- TAREFA 1: Selecionar todas as colunas e linhas da tabela de produtos
SELECT * FROM produtos;


-- TAREFA 2: Selecionar nome e preço de 'Periféricos' com estoque > 5
SELECT nome, preco_unitario
FROM produtos
WHERE categoria = 'Periféricos' 
  AND estoque > 5;


-- TAREFA 3: Selecionar todas as colunas de produtos da categoria 'Periféricos'
SELECT *
FROM produtos
WHERE categoria = 'Periféricos';


-- TAREFA 4: Nome, categoria e estoque de produtos > 500,00, estoque < 10 e não sendo 'Periféricos'
SELECT nome, categoria, estoque
FROM produtos
WHERE preco_unitario > 500.00 
  AND estoque < 10 
  AND categoria <> 'Periféricos';


  -- TAREFA 5: Nome e cidade dos clientes do estado de 'SP'
SELECT nome_completo, cidade
FROM clientes
WHERE estado = 'SP';


-- TAREFA 6: Todos os clientes de 'PR', 'RS' ou que possuem plano 'Gold'
SELECT *
FROM clientes
WHERE estado = 'PR' 
   OR estado = 'RS' 
   OR tipo_plano = 'Gold';


   -- TAREFA 7: Nome, cidade e estado de clientes que NÃO são 'Free' E NÃO são de 'SP'
SELECT nome_completo, cidade, estado
FROM clientes
WHERE tipo_plano <> 'Free' 
  AND estado <> 'SP';


  -- TAREFA 8: Nome e estado de todos os clientes que não possuem o plano 'Free'
SELECT nome_completo, estado
FROM clientes
WHERE tipo_plano <> 'Free';


-- TAREFA 9: Detalhes dos pedidos > 1000,00 com status 'ENVIADO' ou 'PROCESSANDO'
SELECT *
FROM pedidos
WHERE valor_total > 1000.00 
  AND (status = 'ENVIADO' OR status = 'PROCESSANDO');


  -- TAREFA 10: Número do pedido e valor total para status 'ENTREGUE' e valor > 300.00
SELECT num_pedido, valor_total
FROM pedidos
WHERE status = 'ENTREGUE' 
  AND valor_total > 300.00;


-- TAREFA 11: Todos os pedidos não cancelados que atendem ao critério de valor OU data
SELECT *
FROM pedidos
WHERE status <> 'CANCELADO'
  AND (valor_total >= 300.00 OR data_pedido > '2024-02-01');


  -- TAREFA 12: Pedidos desde 20-01-2024 com valor < 200.00 OU status 'PROCESSANDO'
SELECT *
FROM pedidos
WHERE data_pedido >= '2024-01-20'
  AND (valor_total < 200.00 OR status = 'PROCESSANDO');


  -- TAREFA 13: Nome e região de vendedores que bateram a meta e não são do Sudeste
SELECT nome_vendedor, regiao
FROM vendedores
WHERE meta_atingida = 'SIM' 
  AND regiao <> 'Sudeste';


  -- TAREFA 14: Nome e vendas_mes dos vendedores do Sudeste com meta batida e > 40 vendas
SELECT nome_vendedor, vendas_mes
FROM vendedores
WHERE regiao = 'Sudeste' 
  AND meta_atingida = 'SIM' 
  AND vendas_mes > 40;


  -- TAREFA 15: Todos os dados dos vendedores com vendas entre 21 e 39
SELECT *
FROM vendedores
WHERE vendas_mes > 20 
  AND vendas_mes < 40;


  -- TAREFA 16: Nome e região de vendedores do Sul ou Norte que atingiram a meta
SELECT nome_vendedor, regiao
FROM vendedores
WHERE (regiao = 'Sul' OR regiao = 'Norte')
  AND meta_atingida = 'SIM';

