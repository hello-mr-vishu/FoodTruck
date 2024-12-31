    CREATE DATABASE foodtruck;

    USE foodtruck;

    CREATE TABLE IF NOT EXISTS  orders(
        order_id INT PRIMARY KEY AUTOINCREMENT,
        user_id INt ,
        item_id INT,
        quantity INT NOT NULL,
        delivery_address VARCHAR(255) NOT NULL,
        order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    );

    --  Insert Sample data into orders table

    INSERT INTO orders (order_id, user_id, quantity, delivery_address) VALUES\
    (1, 1, 2, '123 Main St'),
(2, 2, 1, '456 Oak Rd'),
(3, 3, 3, '789 Pine Ave');

CREATE Table IF NOT EXISTS categories(
    category_id INT PRIMARY KEY AUTOINCREMENT,
    category_name VARCHAR(255) NOT NULL
);

--  Insert Sample data into categories table

INSERT INTO categories(category_name) VALUES
('Vegetarian'),
('Non-Vegetarian'),
('Vegan');

CREATE TABLE IF NOT EXISTS items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT
);
