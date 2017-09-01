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
VALUES (),
VALUES (),
VALUES (),
VALUES (),
VALUES (),
VALUES (),
VALUES (),
VALUES (),
VALUES (),
VALUES ();