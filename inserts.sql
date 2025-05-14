insert into Veiculo (modelo, placa, status, valor_diaria) VALUES
('Fiat Argo', 'ABC1234', 'Disponivel', 150.00),
('Chevrolet Onix', 'XYZ5678', 'Disponivel', 120.00);

insert into Cliente (nome, cpf, telefone) VALUES
('Maria José', '111.111.111-11', '(83)95746-7835'),
('José Maria', '222.222.222-22', '(83)92901-7052');

insert into Funcionario (nome, cargo, cpf, telefone) VALUES
('Carlos Mendes', 'Atendente', '333.333.333-33', '(83)99999-3333');

insert into Contrato (
    id_veiculo, id_cliente, data_inicio, data_prevista_fim, status
) VALUES (
    1, 1, '2025-05-08', '2025-05-12', 'Aberto'
);

insert into Manutencao (
    id_veiculo, data_manutencao, descricao, custo, tipo
) VALUES (
    2, '2025-05-11', 'Troca de óleo e revisão de freios', 250.00, 'Preventiva'
);
