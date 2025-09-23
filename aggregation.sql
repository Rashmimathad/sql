CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    publisher VARCHAR(50),
    genre VARCHAR(30),
    published_year INT,
    isbn VARCHAR(20),
    language VARCHAR(30),
    pages INT,
    available BOOLEAN
);
