use ecommerce

-- insert de dados nas tabelas
 
INSERT INTO Dados_do_Cliente (Email, Telefone, Endereco, bairro, Cidade, CdPostal, Uf, pais) VALUES
('ana.maria@email.com', '11911112222', 'Rua A, 100', 'Centro', 'São Paulo', '01000-000', 'SP', 'Brasil'),
('carlos.souza@email.com', '21922223333', 'Rua B, 101', 'Copacabana', 'Rio de Janeiro', '22000-000', 'RJ', 'Brasil'),
('julia.mendes@email.com', '31933334444', 'Rua C, 102', 'Savassi', 'Belo Horizonte', '30100-000', 'MG', 'Brasil'),
('pedro.almeida@email.com', '41944445555', 'Rua D, 103', 'Centro', 'Curitiba', '80000-000', 'PR', 'Brasil'),
('mariana.oliveira@email.com', '51955556666', 'Rua E, 104', 'Centro', 'Porto Alegre', '90000-000', 'RS', 'Brasil'),
('ricardo.santos@email.com', '61966667777', 'Rua F, 105', 'Aldeota', 'Fortaleza', '60000-000', 'CE', 'Brasil'),
('beatriz.lima@email.com', '71977778888', 'Rua G, 106', 'Boa Viagem', 'Recife', '50000-000', 'PE', 'Brasil'),
('danilo.pereira@email.com', '81988889999', 'Rua H, 107', 'Centro', 'Salvador', '40000-000', 'BA', 'Brasil'),
('luana.ribeiro@email.com', '11900001111', 'Rua I, 108', 'Centro', 'Natal', '59000-000', 'RN', 'Brasil'),
('felipe.fernandes@email.com', '21999990000', 'Rua J, 109', 'Centro', 'Belém', '66000-000', 'PA', 'Brasil');

INSERT INTO DadosPF (Cpf, dt_nascimento, Pname, Mname, Fname) VALUES
('12345678901', '1990-01-01', 'Ana', 'Clara', 'Marcos'),
('23456789012', '1985-02-02', 'Carlos', 'Helena', 'João'),
('34567890123', '1992-03-03', 'Julia', 'Silvia', 'Antonio'),
('45678901234', '1988-04-04', 'Pedro', 'Lucia', 'Rafael'),
('56789012345', '1991-05-05', 'Mariana', 'Laura', 'Fernando'),
('67890123456', '1993-06-06', 'Ricardo', 'Tereza', 'Carlos'),
('78901234567', '1989-07-07', 'Beatriz', 'Renata', 'José'),
('89012345678', '1994-08-08', 'Danilo', 'Adriana', 'Luis'),
('90123456789', '1995-09-09', 'Luana', 'Patrícia', 'Daniel'),
('01234567890', '1987-10-10', 'Felipe', 'Vera', 'Paulo');

-- Relacionamento PF
INSERT INTO Tipo_cliente (Tp_Cliente, Idcliente, IdPF) VALUES
('PF', 1, 1),
('PF', 2, 2),
('PF', 3, 3),
('PF', 4, 4),
('PF', 5, 5),
('PF', 6, 6),
('PF', 7, 7),
('PF', 8, 8),
('PF', 9, 9),
('PF', 10, 10);


INSERT INTO Dados_do_Cliente (Email, Telefone, Endereco, bairro, Cidade, CdPostal, Uf, pais) VALUES
('contato@empresaa.com', '11910101010', 'Av. A, 200', 'Centro', 'São Paulo', '01100-000', 'SP', 'Brasil'),
('contato@empresab.com', '21920202020', 'Av. B, 201', 'Centro', 'Rio de Janeiro', '22100-000', 'RJ', 'Brasil'),
('contato@empresac.com', '31930303030', 'Av. C, 202', 'Centro', 'Belo Horizonte', '30200-000', 'MG', 'Brasil'),
('contato@empresad.com', '41940404040', 'Av. D, 203', 'Centro', 'Curitiba', '80100-000', 'PR', 'Brasil'),
('contato@empresae.com', '51950505050', 'Av. E, 204', 'Centro', 'Porto Alegre', '90100-000', 'RS', 'Brasil'),
('contato@empresaf.com', '61960606060', 'Av. F, 205', 'Centro', 'Fortaleza', '60100-000', 'CE', 'Brasil'),
('contato@empresag.com', '71970707070', 'Av. G, 206', 'Centro', 'Recife', '50100-000', 'PE', 'Brasil'),
('contato@empresah.com', '81980808080', 'Av. H, 207', 'Centro', 'Salvador', '40100-000', 'BA', 'Brasil'),
('contato@empresai.com', '11990909090', 'Av. I, 208', 'Centro', 'Natal', '59100-000', 'RN', 'Brasil'),
('contato@empresaj.com', '21900000000', 'Av. J, 209', 'Centro', 'Belém', '66100-000', 'PA', 'Brasil');

INSERT INTO DadosPJ (Cnpj, ei, Razao_social) VALUES
('11111111000191', 12345678901, 'Empresa A LTDA'),
('22222222000192', 12345678902, 'Empresa B SA'),
('33333333000193', 12345678903, 'Empresa C EIRELI'),
('44444444000194', 12345678904, 'Empresa D ME'),
('55555555000195', 12345678905, 'Empresa E LTDA'),
('66666666000196', 12345678906, 'Empresa F SA'),
('77777777000197', 12345678907, 'Empresa G EIRELI'),
('88888888000198', 12345678908, 'Empresa H ME'),
('99999999000199', 12345678909, 'Empresa I LTDA'),
('00000000000100', 12345678900, 'Empresa J SA');

-- Relacionamento PJ
INSERT INTO Tipo_cliente (Tp_Cliente, Idcliente, IdPJ) VALUES
('PJ', 11, 1),
('PJ', 12, 2),
('PJ', 13, 3),
('PJ', 14, 4),
('PJ', 15, 5),
('PJ', 16, 6),
('PJ', 17, 7),
('PJ', 18, 8),
('PJ', 19, 9),
('PJ', 20, 10);	
    
-- PRODUTOS 
INSERT INTO produto (idproduto, categoria, descrição, Valor_unitario) VALUES
(1, 'Eletrônicos', 'Fone de ouvido Bluetooth', 150.00),
(2, 'Livros', 'Livro: SQL para Iniciantes', 80.00),
(3, 'Roupas', 'Camiseta básica preta P', 40.00),
(4, 'Acessórios', 'Capa para notebook 15"', 89.90),
(5, 'Livros', 'Guia de Programação Python', 119.00),
(6, 'Eletrônicos', 'Mouse sem fio USB', 79.90),
(7, 'Casa', 'Luminária LED com sensor', 45.00),
(8, 'Games', 'Controle sem fio para PC', 159.90),
(9, 'Escritório', 'Organizador de mesa multifuncional', 39.00),
(10, 'Moda', 'Blusa algodão feminina M', 69.90),
(11, 'Eletrônicos', 'Mini caixa de som bluetooth', 99.00),
(12, 'Beleza', 'Kit pincéis de maquiagem', 49.90),
(13, 'Infantil', 'Brinquedo educativo de madeira', 89.00);
-- ========== FORNECEDORES ==========
INSERT INTO Fornecedor (id, razao_social, cnpj) VALUES
(1, 'Tech Suprimentos', '11222333000181'),
(2, 'Editora Alpha', '22333444000192'),
(3, 'Tecido & Moda', '33444555000193'),
(4, 'SoftTech Distribuição', '45218933000188'),
(5, 'Livraria Saber', '57612947000122'),
(6, 'Gadget World', '30419276000157'),
(7, 'Lumi Casa e Decoração', '90213486000133'),
(8, 'GameMania', '11582099000101'),
(9, 'Office Master', '30820948000176'),
(10, 'Estilo Fashion', '47203958000155'),
(11, 'Music Express', '20819377000102'),
(12, 'MakeUp Pro Brasil', '50617894000178'),
(13, 'Brinq Feliz', '62319884000166');
-- ========== ESTOQUE ==========
INSERT INTO Estoque (idEstoque) VALUES
(1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13);

-- ========== DISPONIBILIDADE ==========
INSERT INTO Disp_um_produto (produto_idproduto, Fornecedor_id) VALUES
(1, 1), (2, 2), (3, 3),(4, 4), (5, 5), (6, 6), (7, 7), (8, 8),
(9, 9), (10, 10), (11, 11), (12, 12), (13, 13);

-- ========== PRODUTO X ESTOQUE ==========
INSERT INTO Produto_has_Estoque (produto_idproduto, Estoque_idEstoque) VALUES
(1, 1), (2, 2), (3, 3),(4, 4), (5, 5), (6, 6), (7, 7), (8, 8),
(9, 9), (10, 10), (11, 11), (12, 12), (13, 13);

-- ========== PEDIDOS ==========
INSERT INTO pedido (idPedido, Status_pedido, Descrição, Cliente_idCliente, Valor_do_pedido) VALUES
(1, 'Pago', 'Pedido de 2 produtos', 1, 190.00),
(2, 'Pago', 'Pedido de livro técnico', 2, 80.00),
(3, 'Aguardando Pagamento', 'Camiseta para cliente PJ', 4, 40.00),
(4, 'Pago', 'Pedido automático', 21, 89.90),
(5, 'Pago', 'Pedido automático', 22, 119.00),
(6, 'Pago', 'Pedido automático', 23, 79.90),
(7, 'Aguardando Pagamento', 'Pedido automático', 24, 45.00),
(8, 'Cancelado', 'Pedido automático', 25, 159.90),
(9, 'Pago', 'Pedido automático', 26, 39.00),
(10, 'Pago', 'Pedido automático', 27, 69.90),
(11, 'Pago', 'Pedido automático', 28, 99.00),
(12, 'Pago', 'Pedido automático', 29, 49.90),
(13, 'Aguardando Pagamento', 'Pedido automático', 30, 89.00);

-- ========== RELAÇÃO PRODUTO X PEDIDO ==========
INSERT INTO Relacao_produto_pedido (pedido_idPedido, produto_idproduto, quantidade, Valor_total) VALUES
(1, 1, 1, 150.00),
(1, 3, 1, 40.00),
(2, 2, 1, 80.00),
(3, 3, 1, 40.00),
(4, 4, 1, 89.90),
(5, 5, 1, 119.00),
(6, 6, 1, 79.90),
(7, 7, 1, 45.00),
(8, 8, 1, 159.90),
(9, 9, 1, 39.00),
(10, 10, 1, 69.90),
(11, 11, 1, 99.00),
(12, 12, 1, 49.90),
(13, 13, 1, 89.00);

-- ========== CARTÕES ==========
INSERT INTO Cartao (idCartao, Tipo_do_cartao, Nome_do_Titular, Numero_do_Cartao, Bandeira, Codigo_de_seguranca, Data_de_validade, dados_do_cliente_idCliente) VALUES
(1, 'Crédito', 'João da Silva', 4111111111111111, 'Visa', '123', '2026-12-01', 1),
(2, 'Débito', 'Maria Oliveira', 5500000000000004, 'Mastercard', '456', '2025-10-01', 2),
(3, 'Crédito', 'Carla Souza', 4111111111111111, 'Visa', '321', '2026-10-01', 21),
(4, 'Débito', 'Lucas Martins', 4222222222222222, 'Elo', '456', '2027-01-01', 22),
(5, 'Crédito', 'Aline Costa', 4333333333333333, 'Mastercard', '789', '2025-11-01', 23),
(6, 'Débito', 'Paulo Lima', 4444444444444444, 'Visa', '012', '2026-12-01', 24),
(7, 'Crédito', 'Fernanda Oliveira', 4555555555555555, 'Mastercard', '345', '2025-08-01', 25),
(8, 'Crédito', 'Joana Mendes', 4666666666666666, 'Elo', '678', '2027-03-01', 26),
(9, 'Débito', 'Vitor Silva', 4777777777777777, 'Visa', '901', '2026-06-01', 27),
(10, 'Crédito', 'Roberta Pereira', 4888888888888888, 'Visa', '234', '2025-07-01', 28),
(11, 'Crédito', 'Fábio Ramos', 4999999999999999, 'Mastercard', '567', '2026-05-01', 29),
(12, 'Débito', 'Letícia Campos', 4000000000000000, 'Elo', '890', '2026-04-01', 30);

-- ========== FORMAS DE PAGAMENTO ==========
INSERT INTO Tipo_de_pagamento (ID_Fm_pag, Pix, Boleto, Cartao, Cartao_idCartao) VALUES
(1, NULL, NULL, 'Cartão de Crédito', 1),
(2, NULL, NULL, 'Cartão de Débito', 2),
(3, NULL, NULL, 'Cartão de Crédito', 3),
(4, NULL, NULL, 'Cartão de Débito', 4),
(5, NULL, NULL, 'Cartão de Crédito', 5),
(6, NULL, NULL, 'Cartão de Débito', 6),
(7, NULL, NULL, 'Cartão de Crédito', 7),
(8, NULL, NULL, 'Cartão de Crédito', 8),
(9, NULL, NULL, 'Cartão de Débito', 9),
(10, NULL, NULL, 'Cartão de Crédito', 10),
(11, NULL, NULL, 'Cartão de Crédito', 11),
(12, NULL, NULL, 'Cartão de Débito', 12);

-- ========== PAGAMENTO RELACIONADO ==========
INSERT INTO Pagamento_realizado_com (pedido_idPedido, Tipo_de_pagamento_ID_Fm_pag) VALUES
(1, 1),
(2, 2),
(4, 3), (5, 4), (6, 5), (7, 6), (8, 7),
(9, 8), (10, 9), (11, 10), (12, 11), (13, 12);

-- ========== ENTREGAS ==========
INSERT INTO Entrega (identrega, codigo_de_rastreio, status, data_de_entrega, horario_de_entrega, nome_transportadora, NMRecebedor) VALUES
(1, 'BR1234567890SP', 'Entregue', '2024-04-01', '14:00:00', 'Correios', 'João da Silva'),
(2, 'BR9876543210RJ', 'Em rota', NULL, NULL, 'Jadlog', 'Maria Oliveira'),
(3, 'BR0000000003BR', 'Entregue', '2024-04-03', '10:00:00', 'Correios', 'Carla Souza'),
(4, 'BR0000000004BR', 'Entregue', '2024-04-04', '11:00:00', 'Jadlog', 'Lucas Martins'),
(5, 'BR0000000005BR', 'Entregue', '2024-04-05', '12:00:00', 'Total Express', 'Aline Costa'),
(6, 'BR0000000006BR', 'Entregue', '2024-04-06', '09:30:00', 'Correios', 'Paulo Lima'),
(7, 'BR0000000007BR', 'Entregue', '2024-04-07', '14:15:00', 'Loggi', 'Fernanda Oliveira'),
(8, 'BR0000000008BR', 'Entregue', '2024-04-08', '16:00:00', 'Correios', 'Joana Mendes'),
(9, 'BR0000000009BR', 'Entregue', '2024-04-09', '13:30:00', 'Jadlog', 'Vitor Silva'),
(10, 'BR0000000010BR', 'Entregue', '2024-04-10', '15:45:00', 'Total Express', 'Roberta Pereira'),
(11, 'BR0000000011BR', 'Entregue', '2024-04-11', '10:50:00', 'Loggi', 'Fábio Ramos'),
(12, 'BR0000000012BR', 'Entregue', '2024-04-12', '08:25:00', 'Correios', 'Letícia Campos');

-- ========== PEDIDO POR ENTREGA ==========
INSERT INTO Pedido_has_Entrega (pedido_idPedido, Entrega_identrega, valor_frete) VALUES
(1, 1, 20.00),
(2, 2, 15.00),
(4, 3, 19.90), (5, 4, 17.50), (6, 5, 20.00),
(7, 6, 22.00), (8, 7, 18.00), (9, 8, 21.00),
(10, 9, 16.00), (11, 10, 19.50), (12, 11, 17.80), (13, 12, 20.00);

-- ========== TERCEIRO VENDEDOR ==========
INSERT INTO Terceiro_vendedor (idTerceiro_vendedor, razao, local, cnpj) VALUES
(1, 'Loja Conecta', 'São Paulo', '44555666000194'),
(2, 'Mega Store RJ', 'Rio de Janeiro', '55666777000195'),
(3, 'Tech Vendas LTDA', 'São Paulo', '01234567000193'),
(4, 'Livros Br', 'Curitiba', '11234567000193'),
(5, 'FashionMix', 'Rio de Janeiro', '21234567000193'),
(6, 'GamePoint', 'Belo Horizonte', '31234567000193'),
(7, 'LumiLux', 'Salvador', '41234567000193'),
(8, 'DecoraExpress', 'Fortaleza', '51234567000193'),
(9, 'MobileTop', 'Brasília', '61234567000193'),
(10, 'BabyStore', 'Recife', '71234567000193'),
(11, 'TechNow', 'Campinas', '81234567000193'),
(12, 'BookFast', 'Natal', '91234567000193');

-- ========== PRODUTO POR VENDEDOR ==========
INSERT INTO Produtos_por_vendedor (produto_idproduto, Terceiro_vendedor_idTerceiro_vendedor, quantidade) VALUES
(1, 1, 10),
(2, 2, 20),
(3, 1, 15),
(4, 3, 20), (5, 4, 15), (6, 5, 25), (7, 6, 10),
(8, 7, 18), (9, 8, 12), (10, 9, 22), (11, 10, 14),
(12, 11, 16), (13, 12, 30);
 --
 
-- ========== PEDIDOS ==========
INSERT INTO pedido (idPedido, Status_pedido, Descrição, Cliente_idCliente, Valor_do_pedido) VALUES
(4, 'Pago', 'Pedido fone  livro', 5, 230.00),
(5, 'Pago', 'Pedido camiseta', 6, 40.00),
(6, 'Cancelado', 'Pedido incompleto', 7, 0.00),
(7, 'Pago', 'Compra rápida', 8, 80.00),
(8, 'Pago', 'Pedido promocional', 11, 150.00),
(9, 'Pago', 'Compra eletrônicos', 12, 190.00),
(10, 'Aguardando Pagamento', 'Pedido futuro', 13, 150.00),
(11, 'Pago', 'Roupa e livro', 14, 120.00),
(12, 'Pago', 'Pedido PJ express', 15, 160.00),
(13, 'Cancelado', 'Cancelado por cliente', 16, 40.00);

-- ========== RELACAO PRODUTO X PEDIDO ==========
INSERT INTO Relacao_produto_pedido (pedido_idPedido, produto_idproduto, quantidade, Valor_total) VALUES
(4, 1, 1, 150.00),
(4, 2, 1, 80.00),
(5, 3, 1, 40.00),
(7, 2, 1, 80.00),
(8, 1, 1, 150.00),
(9, 1, 1, 150.00),
(9, 3, 1, 40.00),
(11, 3, 1, 40.00),
(11, 2, 1, 80.00),
(12, 1, 1, 150.00);

-- ========== CARTOES ==========
INSERT INTO Cartao (idCartao, Tipo_do_cartao, Nome_do_Titular, Numero_do_Cartao, Bandeira, Codigo_de_seguranca, Data_de_validade, dados_do_cliente_idCliente) VALUES
(3, 'Crédito', 'Carlos Souza', 4111111111112222, 'Visa', '321', '2026-10-01', 2),
(4, 'Crédito', 'Julia Mendes', 4111111111113333, 'Mastercard', '654', '2026-08-01', 3),
(5, 'Débito', 'Pedro Almeida', 4111111111114444, 'Elo', '987', '2025-12-01', 4),
(6, 'Crédito', 'Mariana Oliveira', 4111111111115555, 'Visa', '741', '2026-06-01', 5),
(7, 'Débito', 'Ricardo Santos', 4111111111116666, 'Mastercard', '852', '2026-04-01', 6),
(8, 'Crédito', 'Beatriz Lima', 4111111111117777, 'Elo', '963', '2027-01-01', 7),
(9, 'Crédito', 'Danilo Pereira', 4111111111118888, 'Visa', '159', '2026-09-01', 8),
(10, 'Débito', 'Luana Ribeiro', 4111111111119999, 'Mastercard', '357', '2025-11-01', 9),
(11, 'Crédito', 'Felipe Fernandes', 4111111111120000, 'Visa', '753', '2026-07-01', 10),
(12, 'Crédito', 'Empresa A LTDA', 4111111111121111, 'Visa', '246', '2026-12-01', 11);

-- ========== TIPO DE PAGAMENTO ==========
INSERT INTO Tipo_de_pagamento (ID_Fm_pag, Pix, Boleto, Cartao, Cartao_idCartao) VALUES
(3, NULL, NULL, 'Cartão de Crédito', 3),
(4, NULL, NULL, 'Cartão de Crédito', 4),
(5, NULL, NULL, 'Cartão de Débito', 5),
(6, NULL, NULL, 'Cartão de Crédito', 6),
(7, NULL, NULL, 'Cartão de Débito', 7),
(8, NULL, NULL, 'Cartão de Crédito', 8),
(9, NULL, NULL, 'Cartão de Crédito', 9),
(10, NULL, NULL, 'Cartão de Débito', 10),
(11, NULL, NULL, 'Cartão de Crédito', 11),
(12, NULL, NULL, 'Cartão de Crédito', 12);

-- ========== PAGAMENTO REALIZADO COM ==========
INSERT INTO Pagamento_realizado_com (pedido_idPedido, Tipo_de_pagamento_ID_Fm_pag) VALUES
(4, 3), (5, 4), (6, 5), (7, 6), (8, 7),
(9, 8), (10, 9), (11, 10), (12, 11), (13, 12);

-- ========== ENTREGA ==========
INSERT INTO Entrega (identrega, codigo_de_rastreio, status, data_de_entrega, horario_de_entrega, nome_transportadora, NMRecebedor) VALUES
(3, 'BR0000000003BR', 'Entregue', '2024-04-03', '09:30:00', 'Correios', 'Carlos Souza'),
(4, 'BR0000000004BR', 'Entregue', '2024-04-04', '14:00:00', 'Jadlog', 'Julia Mendes'),
(5, 'BR0000000005BR', 'Entregue', '2024-04-05', '11:15:00', 'Total Express', 'Pedro Almeida'),
(6, 'BR0000000006BR', 'Em rota', NULL, NULL, 'Correios', 'Mariana Oliveira'),
(7, 'BR0000000007BR', 'Entregue', '2024-04-06', '10:00:00', 'Loggi', 'Ricardo Santos'),
(8, 'BR0000000008BR', 'Pendente', NULL, NULL, 'Transportadora X', 'Beatriz Lima'),
(9, 'BR0000000009BR', 'Entregue', '2024-04-07', '13:00:00', 'Correios', 'Danilo Pereira'),
(10, 'BR0000000010BR', 'Entregue', '2024-04-08', '16:30:00', 'Jadlog', 'Luana Ribeiro'),
(11, 'BR0000000011BR', 'Entregue', '2024-04-09', '17:00:00', 'Total Express', 'Felipe Fernandes'),
(12, 'BR0000000012BR', 'Entregue', '2024-04-10', '08:45:00', 'Correios', 'Empresa A LTDA');

-- ========== PEDIDO POR ENTREGA ==========
INSERT INTO Pedido_has_Entrega (pedido_idPedido, Entrega_identrega, valor_frete) VALUES
(4, 3, 15.90), (5, 4, 12.00), (6, 5, 18.50), (7, 6, 14.20),
(8, 7, 16.00), (9, 8, 20.00), (10, 9, 13.75), (11, 10, 12.60),
(12, 11, 19.40), (13, 12, 17.10);
