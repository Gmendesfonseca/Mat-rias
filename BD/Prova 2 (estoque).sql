CREATE TABLE Pessoas (
    id_pessoa INT PRIMARY KEY NOT NULL IDENTITY,
    nome NVARCHAR(50),
    genero NVARCHAR(1),
    dataNasc DATE,
    cpf NVARCHAR(30),
    telefone NVARCHAR(20),
    id_endereco INT)

CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY NOT NULL IDENTITY,
    id_pessoa INT)

CREATE TABLE Funcionarios (
    id_funcionario INT PRIMARY KEY NOT NULL IDENTITY,
    id_pessoa INT,
    funcao NVARCHAR(30),
    carteira_trab INT)

CREATE TABLE Fornecedores (
    id_fornecedor INT PRIMARY KEY NOT NULL IDENTITY,
    razao_social NVARCHAR(30),
    id_endereco INT,
    cnpj NVARCHAR(30))

CREATE TABLE Produtos (
    id_produto INT PRIMARY KEY NOT NULL IDENTITY,
    nome NVARCHAR(30),
    valor_compra DECIMAL(7,2),
    valor_venda DECIMAL(7,2),
    id_categoria INT)

CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY NOT NULL IDENTITY,
    descricao NVARCHAR(30))

CREATE TABLE Vendas (
    id_venda INT PRIMARY KEY NOT NULL IDENTITY,
    id_cliente INT,
    id_funcionario INT,
    valor_total DECIMAL(7,2),
    data_venda DATE,
    id_nf INT,
    id_pagamento INT)

CREATE TABLE Compras (
    id_compra INT PRIMARY KEY NOT NULL IDENTITY,
    id_fornecedor INT,
    valor_total DECIMAL(7,2),
    data_compra DATE,
    id_nf INT)

CREATE TABLE Pagamentos (
    id_pagamento INT PRIMARY KEY NOT NULL IDENTITY,
    descricao NVARCHAR(30))

CREATE TABLE Itens_Venda (
    id_itens_venda INT PRIMARY KEY NOT NULL IDENTITY,
    id_venda INT,
    id_produto INT,
    quantidade INT)

CREATE TABLE Itens_compra (
    id_itens_compra INT PRIMARY KEY NOT NULL IDENTITY,
    id_compra INT,
    id_produto INT, 
    quantidade INT)

CREATE TABLE Estoque (
    id_estoque INT PRIMARY KEY NOT NULL IDENTITY,
    id_produto INT,
    quantidade INT)
	
CREATE TABLE Nota_fiscal (
    id_nf INT PRIMARY KEY NOT NULL IDENTITY,
    tipo NVARCHAR(30),
    id_venda INT,
    id_compra INT)

CREATE TABLE Caderneta (
    id_caderneta INT PRIMARY KEY NOT NULL IDENTITY,
    id_venda INT,
    senha INT)

CREATE TABLE Endereco (
    id_endereco INT PRIMARY KEY NOT NULL IDENTITY,
    id_cidade INT,
    id_rua INT,
    id_bairro INT,
    numero INT)

CREATE TABLE Cidade (
    id_cidade INT PRIMARY KEY NOT NULL IDENTITY,
    descricao NVARCHAR(30))

CREATE TABLE Bairro (
    id_bairro INT PRIMARY KEY NOT NULL IDENTITY,
    descricao NVARCHAR(30))

CREATE TABLE Rua (
    id_rua INT PRIMARY KEY NOT NULL IDENTITY,
    descricao NVARCHAR(30))


ALTER TABLE Pessoas ADD CONSTRAINT FK_Pessoa_Endereco FOREIGN KEY (id_endereco) REFERENCES Endereco (id_endereco)

ALTER TABLE Clientes ADD CONSTRAINT FK_Cliente_Pessoa FOREIGN KEY (id_pessoa) REFERENCES Pessoas (id_pessoa)

ALTER TABLE Funcionarios ADD CONSTRAINT FK_Funcionario_Pessoas FOREIGN KEY (id_pessoa) REFERENCES Pessoas (id_pessoa)

ALTER TABLE Fornecedores ADD CONSTRAINT FK_Fornecedores_Endereco FOREIGN KEY (id_endereco) REFERENCES Endereco (id_endereco)

ALTER TABLE Produtos ADD CONSTRAINT FK_Produtos_Categorias FOREIGN KEY (id_categoria) REFERENCES Categorias (id_categoria)

ALTER TABLE Vendas ADD CONSTRAINT FK_Venda_Pagamento FOREIGN KEY (id_pagamento) REFERENCES Pagamentos (id_pagamento);

ALTER TABLE Vendas ADD CONSTRAINT FK_Venda_Cliente FOREIGN KEY (id_cliente) REFERENCES Clientes (id_cliente)

ALTER TABLE Vendas ADD CONSTRAINT FK_Venda_Funcionarios FOREIGN KEY (id_funcionario) REFERENCES Funcionarios (id_funcionario)

ALTER TABLE Vendas ADD CONSTRAINT FK_Venda_Nf FOREIGN KEY (id_nf) REFERENCES Nota_fiscal (id_nf)

ALTER TABLE Compras ADD CONSTRAINT FK_Compras_Fornecedor FOREIGN KEY (id_fornecedor) REFERENCES Fornecedores (id_fornecedor)

ALTER TABLE Compras ADD CONSTRAINT FK_Compras_Nf FOREIGN KEY (id_nf) REFERENCES Nota_fiscal (id_nf)

ALTER TABLE Itens_venda ADD CONSTRAINT FK_ItensVenda_Venda FOREIGN KEY (id_venda) REFERENCES Vendas (id_venda)

ALTER TABLE Itens_venda ADD CONSTRAINT FK_ItensVenda_Produtos FOREIGN KEY (id_Produto) REFERENCES Produtos (id_produto)

ALTER TABLE Itens_compra ADD CONSTRAINT FK_ItensCompra_Compra FOREIGN KEY (id_compra) REFERENCES Compras (id_compra)

ALTER TABLE Itens_compra ADD CONSTRAINT FK_ItensCompra_Produtos FOREIGN KEY (id_produto) REFERENCES Produtos (id_produto)

ALTER TABLE Estoque ADD CONSTRAINT FK_Estoque_Produtos FOREIGN KEY (id_produto) REFERENCES Produtos (id_produto)

ALTER TABLE Nota_fiscal ADD CONSTRAINT FK_Nf_Compra FOREIGN KEY (id_compra) REFERENCES Compras (id_compra)

ALTER TABLE Nota_fiscal ADD CONSTRAINT FK_Nf_Vendas FOREIGN KEY (id_venda) REFERENCES Vendas (id_venda)

ALTER TABLE Caderneta ADD CONSTRAINT FK_Caderneta_Vendas FOREIGN KEY (id_venda) REFERENCES Vendas (id_venda)

ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_Cidade FOREIGN KEY (id_cidade) REFERENCES Cidade (id_cidade)

ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_Bairro FOREIGN KEY (id_bairro) REFERENCES Bairro (id_bairro)

ALTER TABLE Endereco ADD CONSTRAINT FK_Endereco_Rua FOREIGN KEY (id_rua) REFERENCES Rua (id_rua)


-- VIEWS

-- Mostra o cliente já com o seu endereço associado 
CREATE VIEW cliente_endereco AS
SELECT
	c.id_cliente,
	p.nome AS nome_cliente,
	e.id_endereco,
	CONCAT(r.descricao, ',' , e.numero, ',' , b.descricao, ',' , ci.descricao) AS endereco_completo
FROM
	Clientes c
JOIN Pessoas p ON c.id_pessoa = p.id_pessoa
JOIN Endereco e ON p.id_endereco = e.id_endereco
JOIN Rua r ON e.id_rua = r.id_rua
JOIN Bairro b ON e.id_bairro = b.id_bairro
JOIN Cidade ci ON e.id_cidade = ci.id_cidade 

-- Mostra o produto já com a quantidade em estoque
CREATE VIEW produtos_estoque AS
SELECT
	p.id_produto,
	p.nome AS nome_produto,
	p.valor_venda,
	e.quantidade AS quantidade_em_estoque
FROM
	Produtos p
JOIN Estoque e ON p.id_produto = e.id_produto


-- TRIGGERS

-- Atualiza incrementando o estoque de devido produto ao fazer a compra dele 
CREATE TRIGGER atualizar_estoque_Compra
ON Compras
AFTER INSERT
AS
BEGIN
    DECLARE @id_compra INT
    DECLARE @id_nf INT
    SELECT @id_compra = id_compra FROM inserted
    UPDATE e
    SET e.quantidade = e.quantidade + ic.quantidade
    FROM Estoque e
    JOIN Itens_Compra ic ON ic.id_produto = e.id_produto
    JOIN inserted c ON c.id_compra = @id_compra
    WHERE ic.id_compra = @id_compra
    INSERT INTO Nota_fiscal (tipo, id_compra)
    VALUES ('Compra', @id_compra)
    SELECT @id_nf = SCOPE_IDENTITY()
    UPDATE c
    SET c.id_nf = @id_nf
    FROM Compras c
    WHERE c.id_compra = @id_compra
END

-- Atualiza decrementando o estoque de devido produto ao fazer a venda dele 
CREATE TRIGGER atualizar_estoque_Venda
ON Vendas
AFTER INSERT
AS
BEGIN
    DECLARE @id_venda INT
    DECLARE @id_nf INT
    SELECT @id_venda = id_venda FROM inserted
    UPDATE e
    SET e.quantidade = e.quantidade - iv.quantidade
    FROM Estoque e
    JOIN Itens_Venda iv ON iv.id_produto = e.id_produto
    JOIN inserted v ON v.id_venda = @id_venda
    WHERE iv.id_venda = @id_venda
    INSERT INTO Nota_fiscal (tipo, id_venda)
    VALUES ('Venda', @id_venda)
    SELECT @id_nf = SCOPE_IDENTITY();
    UPDATE v
    SET v.id_nf = @id_nf
    FROM Vendas v
    WHERE v.id_venda = @id_venda
END


-- PROCEDURES

-- Atualiza as informações de um produto específico
CREATE PROCEDURE AtualizarProduto
    @id_produto INT,
    @nome NVARCHAR(30),
    @valor_compra DECIMAL(7,2),
    @valor_venda DECIMAL(7,2),
    @id_categoria INT
AS
BEGIN
    UPDATE Produtos
    SET nome = @nome,
        valor_compra = @valor_compra,
        valor_venda = @valor_venda,
        id_categoria = @id_categoria
    WHERE id_produto = @id_produto
END


-- Consulta	as vendas dentro de um período
CREATE PROCEDURE ConsultarVendasPorData
    @data_inicial DATE,
    @data_final DATE
AS
BEGIN
    SELECT v.id_venda, v.id_cliente, v.id_funcionario, v.valor_total, v.data_venda
    FROM Vendas v
    WHERE v.data_venda BETWEEN @data_inicial AND @data_final
END