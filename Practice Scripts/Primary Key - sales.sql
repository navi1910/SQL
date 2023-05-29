CREATE DATABASE sales;

USE sales;
DROP TABLE sales;
CREATE TABLE sales(
	purchase_number INT NOT NULL AUTO_INCREMENT,
    date_of_purchase DATE NOT NULL,
    customer_id INT,
    item_code INT NOT NULL,
PRIMARY KEY (purchase_number)
);
	