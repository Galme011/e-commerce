 drop database Ecommerce 
 
 Create database Ecommerce
 use Ecommerce


 Create table Dados_do_Cliente (
	Idcliente int auto_increment primary key,
    Email varchar(45),
    Telefone varchar(13),
    Endereco varchar(45),
    bairro  varchar(45),
    Cidade varchar(45),
    CdPostal varchar(12),
    Uf varchar(2),
    pais varchar(45),
    Constraint Unique_email_Cliente unique(Email)
    );
    
    
Create table DadosPJ (
		IdPJ int auto_increment not null primary key ,
		Cnpj varchar (14) ,
        Ei char(12),
        Razao_social varchar(45),
		constraint Unique_Cnpj_DadosPj unique (Cnpj)
    );
    
    

create table  DadosPF (
		IdPf int auto_increment not null primary key,
        Cpf char(11),
        dt_nascimento date, 
        Pname varchar(20),
        Mname varchar(20),
        Fname varchar(20),
        Constraint Unique_cnpj_dadosPF unique (Cpf)
        
   );
  
  CREATE TABLE Tipo_cliente (
    IdTpCliente INT AUTO_INCREMENT PRIMARY KEY,
    Tp_Cliente ENUM('PJ','PF') NOT NULL,
    Idcliente INT NOT NULL,
    IdPJ INT NULL,
    IdPF INT NULL,
    
    CONSTRAINT FK_TpCliente_Cliente FOREIGN KEY (Idcliente) 
        REFERENCES Dados_do_Cliente(Idcliente)
        ON DELETE CASCADE ON UPDATE CASCADE,
    
    CONSTRAINT FK_TpCliente_DadosPJ FOREIGN KEY (IdPJ) 
        REFERENCES DadosPJ(IdPJ)
        ON DELETE CASCADE ON UPDATE CASCADE,
        
    CONSTRAINT FK_TpCliente_DadosPF FOREIGN KEY (IdPF) 
        REFERENCES DadosPF(IdPF)
        ON DELETE CASCADE ON UPDATE CASCADE
);
    -- criando produtos 
    
CREATE TABLE produto (
    idproduto INT PRIMARY KEY,
    categoria VARCHAR(45),
    descrição TEXT,
    Valor_unitario DECIMAL(10,2)
);

CREATE TABLE Fornecedor (
    id INT PRIMARY KEY,
    razao_social VARCHAR(45),
    cnpj VARCHAR(14)
);

CREATE TABLE Estoque (
    idEstoque INT PRIMARY KEY
);
CREATE TABLE Disp_um_produto (
    produto_idproduto INT,
    Fornecedor_id INT,
    PRIMARY KEY (produto_idproduto, Fornecedor_id),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Fornecedor_id) REFERENCES Fornecedor(id)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Produto_has_Estoque (
    produto_idproduto INT,
    Estoque_idEstoque INT,
    PRIMARY KEY (produto_idproduto, Estoque_idEstoque),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Estoque_idEstoque) REFERENCES Estoque(idEstoque)
        ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE Terceiro_vendedor (
    idTerceiro_vendedor INT PRIMARY KEY,
    razao VARCHAR(45),
    local VARCHAR(45),
    cnpj VARCHAR(14)
);

CREATE TABLE Produtos_por_vendedor (
    produto_idproduto INT,
    Terceiro_vendedor_idTerceiro_vendedor INT,
    quantidade INT,
    PRIMARY KEY (produto_idproduto, Terceiro_vendedor_idTerceiro_vendedor),
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Terceiro_vendedor_idTerceiro_vendedor) REFERENCES Terceiro_vendedor(idTerceiro_vendedor)
        ON DELETE CASCADE ON UPDATE CASCADE
);

      -- criando pedidos   
      
CREATE TABLE pedido (
    idPedido INT PRIMARY KEY,
    Status_pedido ENUM('Aguardando Pagamento', 'Pago', 'Cancelado') NOT NULL,
    Descrição VARCHAR(45),
    Cliente_idCliente INT,
    Valor_do_pedido DECIMAL(10,2),
    FOREIGN KEY (Cliente_idCliente) REFERENCES Dados_do_Cliente(Idcliente)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Relacao_produto_pedido (
    pedido_idPedido INT,
    produto_idproduto INT,
    quantidade INT,
    Valor_total DECIMAL(10,2),
    PRIMARY KEY (pedido_idPedido, produto_idproduto),
    FOREIGN KEY (pedido_idPedido) REFERENCES pedido(idPedido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (produto_idproduto) REFERENCES produto(idproduto)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- pagamento 

CREATE TABLE Cartao (
    idCartao INT PRIMARY KEY,
    Tipo_do_cartao ENUM('Crédito', 'Débito'),
    Nome_do_Titular VARCHAR(45),
    Numero_do_Cartao BIGINT,
    Bandeira VARCHAR(45),
    Codigo_de_seguranca VARCHAR(5),
    Data_de_validade DATE,
    dados_do_cliente_idCliente INT,
    FOREIGN KEY (dados_do_cliente_idCliente) REFERENCES Dados_do_Cliente(Idcliente)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Tipo_de_pagamento (
    ID_Fm_pag INT PRIMARY KEY,
    Pix VARCHAR(45),
    Boleto VARCHAR(48),
    Cartao VARCHAR(45),
    Cartao_idCartao INT,
    FOREIGN KEY (Cartao_idCartao) REFERENCES Cartao(idCartao)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Pagamento_realizado_com (
    pedido_idPedido INT,
    Tipo_de_pagamento_ID_Fm_pag INT,
    FOREIGN KEY (pedido_idPedido) REFERENCES pedido(idPedido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Tipo_de_pagamento_ID_Fm_pag) REFERENCES Tipo_de_pagamento(ID_Fm_pag)
        ON DELETE CASCADE ON UPDATE CASCADE
);

-- ENTREGA

CREATE TABLE Entrega (
    identrega INT PRIMARY KEY,
    codigo_de_rastreio VARCHAR(45),
    status ENUM('Pendente', 'Em rota', 'Entregue'),
    data_de_entrega DATE,
    horario_de_entrega TIME,
    nome_transportadora VARCHAR(45),
    NMRecebedor VARCHAR(45)
);

CREATE TABLE Pedido_has_Entrega (
    pedido_idPedido INT,
    Entrega_identrega INT,
    valor_frete FLOAT,
    PRIMARY KEY (pedido_idPedido, Entrega_identrega),
    FOREIGN KEY (pedido_idPedido) REFERENCES pedido(idPedido)
        ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (Entrega_identrega) REFERENCES Entrega(identrega)
        ON DELETE CASCADE ON UPDATE CASCADE
);

