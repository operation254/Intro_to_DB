-- Task 3: Create Customers table
USE alx_book_store;

CREATE TABLE IF NOT EXISTS customers (
  customer_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name  VARCHAR(100) NOT NULL,
  last_name   VARCHAR(100) NOT NULL,
  email       VARCHAR(255) NOT NULL UNIQUE,
  address     VARCHAR(255),
  PRIMARY KEY (customer_id)
) ENGINE=InnoDB;
