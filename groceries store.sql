-- PROVISION STORE

-- Step 1: Create database
CREATE DATABASE kirana_db;

-- Step 2: Select database
USE kirana_db;

-- Step 3: Create products table
CREATE TABLE products (
    product_name VARCHAR(60) NOT NULL,
    category VARCHAR(30),
    unit_price DECIMAL(8,2),
    stock_qty INT,
    expiry_date DATE,
    supplier_id INT
);

INSERT INTO products
(product_name, category, unit_price, stock_qty, expiry_date, supplier_id)
VALUES
('Rice', 'Grocery', 60.00, 100, '2027-05-10', 101),
('Sugar', 'Grocery', 45.00, 80, '2027-06-15', 102),
('Milk', 'Dairy', 30.00, 50, '2026-12-10', 103),
('Soap', 'Personal Care', 35.00, 120, '2028-01-20', 104),
('Tea', 'Beverages', 150.00, 40, '2027-08-12', 105);

-- Step 4: Create suppliers table 
CREATE TABLE suppliers (
    supplier_name VARCHAR(60) NOT NULL,
    city VARCHAR(40),
    credit_days INT,
    last_delivery_date DATE
);

INSERT INTO suppliers
(supplier_name, city, credit_days, last_delivery_date)
VALUES
('ABC Traders', 'Ahmedabad', 15, '2026-11-15'),
('Shree Suppliers', 'Surat', 30, '2026-11-16'),
('Fresh Dairy', 'Ahmedabad', 7, '2026-11-17'),
('Daily Needs', 'Vadodara', 15, '2026-11-18'),
('Tea House', 'Rajkot', 20, '2026-11-19');

SELECT * FROM products;
SELECT * FROM suppliers;
