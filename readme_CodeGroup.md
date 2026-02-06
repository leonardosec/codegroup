\# Project Code group

\# Linguagem SQL

\# A utilização do Projeto é em execução SQL por um editor

\# 1 Instale um SGBD



\# MySQL / MariaDB / PostgreSQL (qualquer um compatível com SQL)



\# Exemplo: MySQL + MySQL Workbench



\# 2 Crie o banco de dados



\#CREATE DATABASE sales\_db;

\#USE sales\_db;



\# 3 Crie as tabelas



\# Execute o script SQL com a criação das tabelas conforme o modelo:



customers



orders



order\_items



products



stocks



brands



stores



staffs



\#4 Insira dados de teste



INSERT INTO customers (...) VALUES (...);

INSERT INTO products (...) VALUES (...);



Abra o gerenciador de banco de dados



Selecione o banco criado



Execute as consultas SQL para:



Clientes sem compras



Produtos não vendidos



Produtos sem estoque



Vendas por marca e loja



Funcionários sem pedidos



SELECT c.\*

FROM customers c

LEFT JOIN orders o ON c.customer\_id = o.customer\_id

WHERE o.order\_id IS NULL;





\#Este projeto simula um sistema de vendas com controle de:



\#Clientes e funcionários



\#Pedidos e itens vendidos



\#Produtos, marcas e categorias



\#Estoque por loja

