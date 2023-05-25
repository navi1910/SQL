-- Data Definition Language

/* This is also a comment */

CREATE DATABASE sales;

USE sales;

CREATE TABLE sales_record (Name_customer CHAR);

ALTER TABLE sales_record
ADD COLUMN customer_id INT;

RENAME TABLE sales_record TO quater_sales;

TRUNCATE TABLE quater_sales;

DROP TABLE quater_sales;

-- Data Manipulation Language

