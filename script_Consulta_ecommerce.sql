-- Desafio Perguntas 
use ecommerce 

-- 1 Pergunta
-- Em qual Cidade é Realizado a maior numero de entregas com sucesso ? 

Select
	c.cidade,
	count(e.identrega) as 'contagem' 
from Entrega E 
inner join Pedido_has_Entrega pe on pe.Entrega_identrega = e.identrega
inner join pedido p on  p.idpedido = pe.pedido_idpedido
inner join Dados_do_cliente c  on p.Cliente_idcliente  = c.idcliente
where e.status = 'entregue'
group by (c.Cidade) 
 
-- Resposta: foi identificadas que possui 2 cidades onde possui uma contagem de 2 entregas realizadas com exito sendo porto alegre, fortaleza

-- 2 Pergunta. 
-- Qual transportadora Realiza o maior numero de entregas com sucesso.

Select
	nome_transportadora as 'Transportadora',
	count(Status) as "Entregas Realizadas"
 from Entrega 
 where status = 'Entregue'
 group by nome_transportadora 

-- Resposta: Apos analise foi identificado que a transportadora que realiza mais entregas seria os correios com 5 entregas. 

-- Qual  categoria de produto teve uma maior saida do estoque e o valor somado ? 

Select 
	p.Categoria ,
    count(rp.quantidade) as 'quantidade',
    sum(p.Valor_unitario * rp.quantidade ) as 'somatoria'
from Relacao_produto_pedido  rp 
inner join produto P on  p.idproduto = rp.produto_idproduto 
group by  p.Categoria 

-- Resposta: Eletronicos  teve 4 saida e somatoria de 600,00


-- Desafio Query 

-- Recuperacões simples com SELECT Statement

Select Codigo_de_rastreio,status from Entrega

-- Filtros com WHERE Statement

Select *from  Dados_do_Cliente where  UF = 'SP'


-- Crie expressões para gerar atributos derivados
Select Pedido_idPedido ,Sum(Valor_total) as 'valor total' from Relacao_produto_pedido group by Pedido_idPedido

-- Defina ordenações dos dados com ORDER BY

SELECT*FROM Dados_do_Cliente ORDER BY uF

-- Condicões de filtros aos grupos - HAVING Statement
-- 1 
Select 
	Nome_transportadora,
	count(status) as 'Contagem por chamado' 
from Entrega 
group by Nome_transportadora  
having count(*) < 10
-- 2
Select 
	Status_pedido,
	sum(Valor_do_pedido) as 'valor total'
from Pedido 
group by Status_pedido
having sum(valor_Do_pedido>40)

-- Crie junções entre tabelas para fornecer perspectiva mais complexa dos dados
Select 
	idpedido as 'numero do pedido ',
	p.Status_pedido as 'status ',
	p.Valor_do_Pedido as 'valor', 
	tp.Tp_Cliente as 'Tipo de cliente',
	dc.Uf as 'pedido enviado para'
from pedido p 
inner join tipo_cliente tp  on tp.Idcliente = P.Cliente_idcliente
inner join dados_do_cliente DC  on dc.Idcliente = P.Cliente_idcliente
order by Status_pedido 


-- Desafios Algumas das perguntas que podes fazer para embasar as queries SQL
 
-- Quantos pedidos foram feitos por cada cliente?

Select 
	cliente_idcliente as 'Codigo do cliente',
	count(cliente_idcliente) as 'quantidade de pedidos por cliente '
from pedido 
group by cliente_idcliente

-- Algum vendedor também é fornecedor?

Select 
	f.*,  
	case
		when  f.cnpj in (Select cnpj from Terceiro_vendedor)
		then 'Sim'
        else 'Não'
        end as 'tambem é vendedor'
from fornecedor f

-- Relação de produtos fornecedores e estoques;

SELECT 
    p.idproduto,
    p.descrição AS nome_produto,
    f.razao_social AS nome_fornecedor,
    e.idEstoque
FROM produto p
JOIN Disp_um_produto dp ON p.idproduto = dp.produto_idproduto
JOIN Fornecedor f ON f.id = dp.Fornecedor_id
JOIN Produto_has_Estoque pe ON p.idproduto = pe.produto_idproduto
JOIN Estoque e ON e.idEstoque = pe.Estoque_idEstoque;

-- Relação de nomes dos fornecedores e nomes dos produtos;

SELECT 
    f.razao_social AS nome_fornecedor,
    p.descrição AS nome_produto
FROM produto p
JOIN Disp_um_produto dp ON p.idproduto = dp.produto_idproduto
JOIN Fornecedor f ON f.id = dp.Fornecedor_id;


