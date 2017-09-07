DROP DATABASE IF EXISTS bamazonDB;
CREATE DATABASE bamazonDB;
USE bamazonDB;

CREATE TABLE products (
  id INT(11) AUTO_INCREMENT NOT NULL,
  item_id INT(11) NULL,
  product_name VARCHAR(50) NULL,
  department_name VARCHAR(50) NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT(11) NULL,
  PRIMARY KEY (id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) 
VALUES (101, "Playstation 4", "Entertainment", 300.00, 9);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (102, "Yoga Mat", "Fitness", 25.00, 5);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (103, "Sunglasses", "Fashion", 150.00, 7);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (104, "Protein Powder", "Food", 35.00, 6);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (105, "Dog Food", "Pets", 12.00, 11);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (106, "Skateboard", "Fitness", 125.00, 4);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (107, "Keyboard", "Technology", 100.00, 8);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (108, "Shovel", "Outdoor", 19.00, 2);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (109, "Axe", "Outdoor", 22.00, 1);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity)
VALUES (110, "Salt", "Food", 3.00, 41);