-- Task 0: Database + core tables for the ALX Book Store
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- Authors
CREATE TABLE IF NOT EXISTS Authors (
  author_id   INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(100) NOT NULL
);

-- Books
CREATE TABLE IF NOT EXISTS Books (
  book_id   INT AUTO_INCREMENT PRIMARY KEY,
  title     VARCHAR(200) NOT NULL,
  author_id INT NOT NULL,
  price     DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_books_author
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Customers
CREATE TABLE IF NOT EXISTS Customers (
  customer_id   INT AUTO_INCREMENT PRIMARY KEY,
  customer_name VARCHAR(100) NOT NULL,
  email         VARCHAR(100) UNIQUE
);

-- Orders
CREATE TABLE IF NOT EXISTS Orders (
  order_id    INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  order_date  DATE NOT NULL,
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
