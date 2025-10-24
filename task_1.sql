-- Task 1: Authors table
USE alx_book_store;

CREATE TABLE IF NOT EXISTS authors (
  author_id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
  first_name  VARCHAR(100) NOT NULL,
  last_name   VARCHAR(100) NOT NULL,
  email       VARCHAR(255) UNIQUE,
  PRIMARY KEY (author_id)
) ENGINE=InnoDB;
