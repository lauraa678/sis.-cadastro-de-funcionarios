CREATE DATABASE gestorEmpresa
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE gestorEmpresa;

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(200) NOT NULL,
    cpf VARCHAR(20) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    cargo VARCHAR(100) NOT NULL,
    setor VARCHAR(100) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    sexo ENUM('Feminino', 'Masculino') NOT NULL
) CHARACTER SET utf8mb4;

select * from funcionarios;

CREATE TABLE setor (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
) CHARACTER SET utf8mb4;

INSERT INTO setor (nome) VALUES
('Recursos Humanos'),
('Financeiro'),
('TI'),
('Marketing'),
('Vendas'),
('Logística');

select * from setor;

ALTER TABLE funcionarios MODIFY cpf VARCHAR(25) NOT NULL UNIQUE;






