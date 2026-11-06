 select * from enderecos;





select * from enderecos
where numero >= 150
 order by numero asc 
 limit 10 ;

 select * from enderecos	
where bairro = "sao JOse" or estado = "pe" ;



-- atividade 
/*
ecolha uma tabela e baseando-se em suas colunas e dados, pense em algum problema/ pergunta
que poderia ser respondida com sql 
*/

-- quero saber onde estao os clientes e as cidades de hospedagens 

/*select  hospedagem_id, ativo from hospedagens
where ativo =1;*/

/*qua ticket medio das pessoas na plataforma
*/
select * from alugueis ;

select clientes_id, avg(preco_total) 
as ticket_medio
from alugueis
group by clientes_id;

/* quais dias tem maiores quantidades reservas */
select cliente_id, avg (datediff(data_fim,data_inicio)) 
as media_dias_estadias
from alugueis 
group by cliente_id 
order by media_dias_estadias desc;

-- avg (): média

