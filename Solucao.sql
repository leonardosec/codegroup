--Listar todos os Clientes que não tenham realizado uma compra

SELECT c.*
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

--Listar os Produtos que não tenham sido comprados
SELECT p.*
FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

-- Listar os Produtos sem Estoque

SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN stocks s ON p.product_id = s.product_id
WHERE s.quantity IS NULL
   OR s.quantity = 0;


--Agrupar a quantidade de vendas de uma determinada Marca por Loja

SELECT 
    b.brand_name,
    s.store_name,
    SUM(oi.quantity) AS total_vendido
FROM order_items oi
JOIN orders o       ON oi.order_id = o.order_id
JOIN products p     ON oi.product_id = p.product_id
JOIN brands b       ON p.brand_id = b.brand_id
JOIN stores s       ON o.store_id = s.store_id
GROUP BY b.brand_name, s.store_name
ORDER BY b.brand_name, s.store_name;

--Listar os Funcionários que não estejam relacionados a um Pedido
SELECT st.*
FROM staffs st
LEFT JOIN orders o ON st.staff_id = o.staff_id
WHERE o.order_id IS NULL;


