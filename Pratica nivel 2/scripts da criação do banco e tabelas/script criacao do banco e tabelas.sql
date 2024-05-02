CREATE DATABASE loja;
GO

-- Usa o banco de dados recém-criado
USE loja;
GO

CREATE TABLE Cadastro (
    IdUsuario INT PRIMARY KEY,
    Nome NVARCHAR(255),
    Localizacao VARCHAR(255),
    Contato BIGINT,
	Email VARCHAR(255),
	Senha VARCHAR (20),
	TipoPessoa CHAR(1),
	CPF BIGINT,
	CNPJ BIGINT );

CREATE TABLE LoginSistema(
	IdUsuario INT,
	Senha VARCHAR(20),
	TipoPessoa CHAR(1) );

CREATE TABLE CPF (
	CPF BIGINT,
	MovCompra INT PRIMARY KEY);

CREATE TABLE CNPJ (
	CNPJ BIGINT,
	MovVenda INT PRIMARY KEY);

CREATE TABLE Mov_Compra (
	IdCompra INT PRIMARY KEY,
	IdProduto INT);

CREATE TABLE MovVenda (
	IdVenda INT PRIMARY KEY,
	IdProduto INT );

CREATE TABLE Produto (
	IdProduto INT PRIMARY KEY,
	NomeProduto VARCHAR(255),
	QtdProduto INT,
	PrecoVenda DECIMAL );

GO