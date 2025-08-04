-- 1. Create Table books
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    year_published INT,
    isAvailable BOOLEAN DEFAULT TRUE,
    price NUMERIC(8,2),
    publication VARCHAR(100)
);

-- 2. Inserting 15 Sample Books
INSERT INTO books (title, author, year_published, isAvailable, price, publication) VALUES
('The Great Book', 'Alice Monroe', 1999, TRUE, 499.99, 'ABC'),
('1984', 'George Orwell', 1949, FALSE, 299.00, 'XYZ'),
('Future Horizons', 'Raj Patel', 2005, TRUE, 650.50, 'XYZ'),
('Data Patterns', 'Lena Smith', 2018, TRUE, 799.99, 'TechPress'),
('Deep Dive SQL', 'Carlos Gomez', 2021, FALSE, 550.00, 'XYZ'),
('Mystery of Code', 'Erin Zhao', 2003, TRUE, 450.75, 'Novelty'),
('Cooking with Logic', 'Marie Curie', 2010, TRUE, 120.00, 'FoodiePub'),
('The Art of Design', 'Jamal Wright', 2015, FALSE, 999.99, 'CreativeHouse'),
('Quantum Thoughts', 'Nina Rossi', 2022, TRUE, 1250.00, 'ScienceDaily'),
('Travel Diaries', 'Omar Ali', 1995, TRUE, 220.00, 'WanderPress'),
('Eloquent JS', 'Yusuf Khan', 2019, TRUE, 680.00, 'TechPress'),
('Hidden Truths', 'Zara Lee', 2001, FALSE, 330.00, 'XYZ'),
('Gardening 101', 'Fiona Beck', 2008, TRUE, 199.99, 'GreenThumb'),
('Modern Architecture', 'Liam O''Connor', 2012, TRUE, 850.00, 'DesignWorks'),
('Philosophy Now', 'Keisha Brown', 2004, TRUE, 425.25, 'ThoughtLane');

-- 3. Select all books published after 2000
SELECT * FROM books
WHERE year_published > 2000;

-- 4. Select books with a price less than 599.00, ordered by price in descending order
SELECT * FROM books
WHERE price < 599.00
ORDER BY price DESC;

-- 5. Select the top 3 most expensive books
SELECT * FROM books
ORDER BY price DESC
LIMIT 3;

-- 6. Select 2 books, skipping the first 2, ordered by year_published in descending order
SELECT * FROM books
ORDER BY year_published DESC
OFFSET 2
LIMIT 2;

-- 7. Select all books of the publication “XYZ” ordered alphabetically by title
SELECT * FROM books
WHERE publication = 'XYZ'
ORDER BY title ASC;
