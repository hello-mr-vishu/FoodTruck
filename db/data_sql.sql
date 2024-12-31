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

    --  Insert data into orders table

    INSERT INTO orders (order_id, user_id, quantity, delivery_address) VALUES\
    (1, 1, 2, '123 Main St'),
(2, 2, 1, '456 Oak Rd'),
(3, 3, 3, '789 Pine Ave');

CREATE Table IF NOT EXISTS categories(
    category_id INT PRIMARY KEY AUTOINCREMENT,
    category_name VARCHAR(255) NOT NULL
)