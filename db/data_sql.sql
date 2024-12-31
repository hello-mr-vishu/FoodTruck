    CREATE DATABASE foodtruck;

    USE foodtruck;

    CREATE TABLE IF NOT EXISTS  orders(
        order_id INT PRIMARY KEY AUTOINCREMENT,
        user_id INt ,
        item_id INT,
        quantity INT NOT NULL,
        delivery_address VARCHAR(255) NOT NULL,
        order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    )