-- Task 2: Books table
USE alx_book_store;

CREATE TABLE IF NOT EXISTS books (
  book_id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title          VARCHAR(255) NOT NULL,
  author_id      INT UNSIGNED NOT NULL,
  published_date DATE,
  price          DECIMAL(10,2) NOT NULL DEFAULT 0.00,
  quantity       INT UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (book_id),
  CONSTRAINT fk_books_author
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
      ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB;
