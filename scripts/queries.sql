Use dbcarpartsstore;

SELECT 
	name
    , stock_quantity
    , price 
FROM products;

SELECT 
	customers.first_name
    , customers.last_name
    , orders.id AS order_id
    , orders.order_date
    , orders.total_amount
FROM customers
JOIN orders ON customers.id = orders.customer_id;

SELECT 
	categories.name
    , SUM(order_details.quantity * order_details.unit_price) AS total_sales
FROM categories
JOIN products ON categories.id = products.category_id
JOIN order_details ON products.id = order_details.product_id
GROUP BY categories.name;

SELECT 
	products.name
    , SUM(order_details.quantity) AS total_sold
FROM products
JOIN order_details ON products.id = order_details.product_id
GROUP BY products.name
ORDER BY total_sold DESC
LIMIT 5;