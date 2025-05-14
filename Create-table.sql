create schema Locadora;

create table Veiculo (
    id_veiculo INT PRIMARY KEY AUTO_INCREMENT,
    modelo VARCHAR(100),
    placa VARCHAR(10) UNIQUE,
    status ENUM('Disponivel', 'Alugado') DEFAULT 'Disponivel',
    valor_diaria DECIMAL(10,2)
);

create table Cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20)
);

create table Contrato (
    id_contrato INT PRIMARY KEY AUTO_INCREMENT,
    id_veiculo INT,
    id_cliente INT,
    data_inicio DATE,
    data_prevista_fim DATE,
    data_fim DATE,
    valor_total DECIMAL(10,2),
    status ENUM('Aberto', 'Fechado') DEFAULT 'Aberto',
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo),
    FOREIGN KEY (id_cliente) REFERENCES Cliente(id_cliente)
);

create table Pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_contrato INT,
    data_pagamento DATE,
    valor_pago DECIMAL(10,2),
    FOREIGN KEY (id_contrato) REFERENCES Contrato(id_contrato)
);

create table Funcionario (
	id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    cpf VARCHAR(14) UNIQUE,
    telefone VARCHAR(20)
);

create table Manutencao (
    id_manutencao INT PRIMARY KEY AUTO_INCREMENT,
    id_veiculo INT,
    data_manutencao DATE,
    descricao TEXT,
    custo DECIMAL(10,2),
    tipo ENUM('Preventiva', 'Corretiva'),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id_veiculo)
);
