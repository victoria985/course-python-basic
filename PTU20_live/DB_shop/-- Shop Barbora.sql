-- Parduotuve Barbora
CREATE TABLE IF NOT EXISTS customer (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS product (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(15,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS bill (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    purchase_datetime DATETIME NOT NULL,
    cashier_id INTEGER NOT NULL,
    customer_id INTEGER REFERENCES customer(id)
);

CREATE TABLE IF NOT EXISTS bill_line (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    bill_id INTEGER REFERENCES bill(id),
    product_id INTEGER REFERENCES product(id),
    quantity DECIMAL(15,2)
);


--DROP TABLE bill;
--ALTER TABLE bill ADD cashier_id INTEGER;

INSERT INTO customer (id, first_name, last_name)
VALUES (1, 'Bill', 'Smitt'),
       (2, 'Ana', 'Wella'),
       (3, 'Marija', 'Smile'),
       (4, 'Rouze', 'Klark'),
       (5, 'David', 'Dark');

INSERT INTO product (id, name, price) 
VALUES (1, 'Bread', 1.70),
       (2, 'Milk', 1.30),
       (3, 'Butter', 1.99),
       (4, 'Fish', 7.99),
       (5, 'Meat', 4.99),
       (6, 'Cheese', 3.50),
       (7, 'Egg', 1.99),
       (8, 'Soda', 2.30),
       (9, 'Chocolate', 1.55),
       (10, 'Orange', 1.49),
       (11, 'Cherry', 4.99),
       (12, 'Apple', 0.99),
       (13, 'Cheese_cream', 3.85),
       (14,  'coffe', 7.99),
       (15, 'cupkakes', 3.30);
       

INSERT INTO bill (id, purchase_datetime, cashier_id)
VALUES 
        (1, '2023-07-11', 1),
        (2, '2023-08-05', 3),
        (3, '2023-08-18', 2),
        (4, '2023-08-25', 2),
        (5, '2023-09-12', 4),
        (6, '2023-09-29', 3),
        (7, '2023-10-03', 5),
        (8, '2023-10-22', 4),
        (9, '2023-11-15', 7),
        (10, '2023-11-30', 5),
        (11, '2023-12-02', 6),
        (12, '2023-12-11', 6),
        (13, '2023-12-23', 7),
        (14, '2023-12-30', 3),
        (15, '2024-01-08', 2),
        (16, '2024-01-13', 1),
        (17, '2024-01-14', 1),
        (18, '2024-01-19', 7),
        (19, '2024-01-23', 6),
        (20, '2024-01-27', 4),
        (21, '2024-01-31', 2);

       

      


    


