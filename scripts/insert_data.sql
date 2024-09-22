INSERT INTO customers (first_name, last_name, email, phone, address, city, postal_code, country) VALUES
('Jan', 'Kurczok', 'kurczok123@gmail.com', '700569732', 'Barcza 23', 'Olsztyn', '10685', 'Poland'),
('Krzysztof', 'Smykał', 'krzysiu_13@gmail.com', '614732512', 'Witosa 3C', 'Olsztyn', '10685', 'Poland');

INSERT INTO categories (name) VALUES
('Engine Parts'),
('Brakes'),
('Suspension'),
('Exhaust');

INSERT INTO suppliers (name, contact_name, phone, email, address, city, postal_code, country) VALUES
('Bosch', 'Stanisław Zych', '614732515', 'ZychS@Bosch.com', 'Lubelska 43', 'Olsztyn', '10700', 'Poland'),
('Parts4Cars', 'Borys Kalista', '703569732', 'KalistaB@parts4cars.com', 'Lubelska 48', 'Olsztyn', '10700', 'Poland');

INSERT INTO products (name, description, price, stock_quantity, category_id, supplier_id) VALUES
('Brake Pads', 'High-quality brake pads for all cars', 50.00, 100, 2, 1),
('Oil Filter', 'Durable oil filter for most car models', 15.50, 200, 1, 2);

INSERT INTO orders (customer_id, total_amount, shipping_address, shipping_city, shipping_postal_code, shipping_country) VALUES
(1, 100.00, 'Hanowskiego 45B', 'Jonkowo', '11042', 'Poland'),
(2, 50.00, 'Augustkowska 26', 'Olsztyn', '11041', 'Poland');

INSERT INTO order_details (order_id, product_id, quantity, unit_price) VALUES
(1, 1, 2, 50.00),
(2, 2, 1, 15.00);