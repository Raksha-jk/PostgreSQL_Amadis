CREATE TABLE authors(
	author_id SERIAL PRIMARY KEY,
	author_name TEXT NOT NULL
);
CREATE TABLE books(
	book_id SERIAL PRIMARY KEY,
	book_name TEXT NOT NULL,
	author_id INTEGER NOT NULL REFERENCES authors(author_id)
);

INSERT INTO authors (author_name) VALUES
('J.K. Rowling'),
('George R.R. Martin'),
('J.R.R. Tolkien'),
('Agatha Christie'),
('Stephen King'),
('Dan Brown'),
('Jane Austen'),
('Mark Twain'),
('Ernest Hemingway'),
('Harper Lee');

INSERT INTO books (book_name, author_id) VALUES
('Harry Potter and the Sorcerers Stone', 1),
('Harry Potter and the Chamber of Secrets', 1),
('A Game of Thrones', 2),
('A Clash of Kings', 2),
('The Hobbit', 3),
('The Lord of the Rings', 3),
('Murder on the Orient Express', 4),
('And Then There Were None', 4),
('The Shining', 5),
('It', 5),
('The Da Vinci Code', 6),
('Angels and Demons', 6),
('Pride and Prejudice', 7),
('Emma', 7),
('Adventures of Huckleberry Finn', 8),
('The Adventures of Tom Sawyer', 8),
('The Old Man and the Sea', 9),
('A Farewell to Arms', 9),
('To Kill a Mockingbird', 10),
('Go Set a Watchman', 10);

SELECT * FROM books;
SELECT * FROM authors;

WITH jk_books AS (
    SELECT * FROM books WHERE author_id = 1
)
SELECT book_name, author_id FROM jk_books;


WITH new_authors as(
	insert into authors(author_name)
	values('Joseph Murphy')
	returning author_id
)