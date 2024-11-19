CREATE DATABASE VerseVault;
USE VerseVault;

#creating tables

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name VARCHAR(50),
    birth_year YEAR,
    nationality VARCHAR(20),
    debut_year YEAR
);

CREATE TABLE genres (
    genre_id INT PRIMARY KEY,
    genre_name VARCHAR(20)
);

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(50),
    author_id INT,
    genre_id INT,
    publication_year YEAR,
    page_count INT,
    language VARCHAR(20),
    FOREIGN KEY (author_id) REFERENCES authors(author_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE ratings (
    rating_id INT PRIMARY KEY,
    book_id INT,
    user_id INT,
    rating INT,
    review VARCHAR(100),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

CREATE TABLE sales (
    sale_id INT PRIMARY KEY,
    book_id INT,
    copies_sold INT,
    region VARCHAR(20),
    sale_year YEAR,
    price INT,
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);


#inserting data

INSERT INTO authors (author_id, name, birth_year, nationality, debut_year) 
VALUES 
(1, 'J.K. Rowling', 1965, 'British', 1997),
(2, 'George Orwell', 1903, 'British', 1933),
(3, 'Margaret Atwood', 1939, 'Canadian', 1966),
(4, 'Toni Morrison', 1931, 'American', 1970),
(5, 'Haruki Murakami', 1949, 'Japanese', 1987),
(6, 'Neil Gaiman', 1960, 'British', 1990),
(7, 'Isaac Asimov', 1920, 'American', 1950),
(8, 'Philip K. Dick', 1928, 'American', 1955),
(9, 'Kurt Vonnegut', 1922, 'American', 1952),
(10, 'Chimamanda Ngozi Adichie', 1977, 'Nigerian', 2003),
(11, 'Kazuo Ishiguro', 1954, 'British', 1989),
(12, 'Dan Brown', 1964, 'American', 1998),
(13, 'Stephen King', 1947, 'American', 1974);

INSERT INTO genres (genre_id, genre_name)
VALUES
(1, 'Fantasy'),
(2, 'Science Fiction'),
(3, 'Mystery'),
(4, 'Dystopian'),
(5, 'Historical Fiction'),
(6, 'Literary Fiction'),
(7, 'Thriller'),
(8, 'Magical Realism'),
(9, 'Romance'),
(10, 'Non-fiction');

INSERT INTO books (book_id, title, author_id, genre_id, publication_year, page_count, language)
VALUES
(1, 'Harry Potter and the Sorcerer\'s Stone', 1, 1, 1997, 320, 'English'),
(2, '1984', 2, 4, 1949, 328, 'English'),
(3, 'The Handmaid\'s Tale', 3, 4, 1985, 311, 'English'),
(4, 'Beloved', 4, 5, 1987, 324, 'English'),
(5, 'Norwegian Wood', 5, 6, 1987, 296, 'Japanese'),
(6, 'American Gods', 6, 1, 2001, 465, 'English'),
(7, 'Foundation', 7, 2, 1951, 244, 'English'),
(8, 'Do Androids Dream of Electric Sheep?', 8, 2, 1968, 210, 'English'),
(9, 'Slaughterhouse-Five', 9, 6, 1969, 275, 'English'),
(10, 'Half of a Yellow Sun', 10, 5, 2006, 448, 'English'),
(11, 'Never Let Me Go', 11, 4, 2005, 288, 'English'),
(12, 'The Da Vinci Code', 12, 7, 2003, 489, 'English'),
(13, 'The Shining', 13, 7, 1977, 447, 'English'),
(14, 'Harry Potter and the Chamber of Secrets', 1, 1, 1998, 341, 'English'),
(15, 'Harry Potter and the Prisoner of Azkaban', 1, 1, 1999, 435, 'English'),
(16, 'Animal Farm', 2, 4, 1945, 112, 'English'),
(17, 'Oryx and Crake', 3, 4, 2003, 376, 'English'),
(18, 'The Bluest Eye', 4, 5, 1970, 206, 'English'),
(19, 'Song of Solomon', 4, 6, 1977, 337, 'English'),
(20, 'Kafka on the Shore', 5, 8, 2002, 505, 'Japanese'),
(21, '1Q84', 5, 9, 2009, 928, 'Japanese'),
(22, 'Coraline', 6, 1, 2002, 163, 'English'),
(23, 'Good Omens', 6, 3, 1990, 432, 'English'),
(24, 'I, Robot', 7, 2, 1950, 224, 'English'),
(25, 'The Gods Themselves', 7, 2, 1972, 288, 'English'),
(26, 'It', 13, 7, 1986, 1138, 'English'),
(27, 'Misery', 13, 7, 1987, 338, 'English'),
(28, 'Harry Potter and the Goblet of Fire', 1, 1, 2000, 636, 'English'),
(29, 'The Stand', 13, 7, 1978, 823, 'English'),
(30, 'Misery', 13, 7, 1987, 368, 'English'),
(31, 'Homage to Catalonia', 2, 10, 1938, 232, 'English'),
(32, 'Pebble in the Sky', 7, 2, 1950, 223, 'English'),
(33, 'The Blind Assassin', 3, 6, 2000, 521, 'English'),
(34, 'Ubik', 8, 2, 1969, 224, 'English'),
(35, 'The Graveyard Book', 6, 1, 2008, 312, 'English'),
(36, '1Q84', 5, 6, 2009, 928, 'Japanese'),
(37, 'When We Were Orphans', 11, 6, 2000, 336, 'English');

INSERT INTO ratings (rating_id, book_id, user_id, rating, review)
VALUES
(1, 1, 1, 5, 'A magical and captivating story!'),
(2, 2, 2, 4, 'A chilling depiction of totalitarianism.'),
(3, 3, 3, 5, 'Disturbingly brilliant.'),
(4, 4, 4, 4, 'Powerful and haunting.'),
(5, 5, 5, 4, 'Beautifully written.'),
(6, 6, 6, 5, 'Epic and captivating.'),
(7, 7, 7, 5, 'A sci-fi masterpiece.'),
(8, 8, 8, 4, 'Thought-provoking and intense.'),
(9, 9, 9, 5, 'One of the best anti-war novels ever.'),
(10, 10, 10, 5, 'Stunning and emotional.'),
(11, 11, 11, 4, 'Poignant and memorable.'),
(12, 12, 12, 4, 'A thrilling page-turner.'),
(13, 13, 13, 5, 'Terrifyingly brilliant.'),
(14, 14, 13, 5, 'An incredible sequel!'),
(15, 15, 14, 4, 'A delightful adventure!'),
(16, 16, 15, 5, 'A classic tale that never ages.'),
(17, 17, 16, 4, 'Dark and riveting.'),
(18, 18, 17, 5, 'A perfect blend of sci-fi and horror.'),
(19, 19, 18, 4, 'A touching exploration of family.'),
(20, 20, 19, 5, 'An engaging read from start to finish.'),
(21, 21, 20, 5, 'A beautifully written journey.'),
(22, 22, 21, 4, 'Enchanting and whimsical.'),
(23, 23, 22, 5, 'An iconic story of friendship.'),
(24, 24, 23, 4, 'Thought-provoking and profound.'),
(25, 25, 24, 5, 'An imaginative and intricate tale.'),
(26, 26, 25, 4, 'A haunting and memorable read.'),
(27, 27, 26, 5, 'A thrilling masterpiece!'),
(28, 28, 27, 4, 'Engaging and full of twists.'),
(29, 29, 28, 5, 'A thought-provoking tale.'),
(30, 30, 29, 4, 'Rich in detail and character.'),
(31, 31, 30, 5, 'An unforgettable experience.'),
(32, 32, 31, 4, 'A story that lingers.'),
(33, 33, 32, 5, 'A perfect mix of history and fiction.'),
(34, 34, 33, 4, 'Masterfully crafted!'),
(35, 35, 34, 5, 'A gripping narrative.'),
(36, 36, 35, 4, 'Profound and engaging.'),
(37, 37, 36, 5, 'An extraordinary journey.'),
(38, 1, 2, 4, 'A mesmerizing journey through magic.'),
(39, 1, 3, 5, 'I couldn''t put it down!'),
(40, 1, 4, 5, 'A wonderful tale that stayed with me.'),
(41, 2, 5, 4, 'A strong and gripping narrative.'),
(42, 2, 6, 5, 'A deep dive into human nature.'),
(43, 2, 7, 3, 'Interesting but a bit slow at times.'),
(44, 3, 8, 4, 'A haunting and thought-provoking read.'),
(45, 3, 9, 5, 'Masterfully written and unsettling.'),
(46, 4, 10, 3, 'A good read, but it felt incomplete.'),
(47, 4, 11, 5, 'An emotionally charged story.'),
(48, 5, 12, 5, 'A beautiful exploration of love and loss.'),
(49, 6, 13, 5, 'Epic in scope and emotional depth.'),
(50, 6, 14, 4, 'An ambitious narrative that mostly succeeds.'),
(51, 7, 15, 5, 'A brilliant sci-fi adventure!'),
(52, 7, 16, 4, 'Thought-provoking with a few dull spots.'),
(53, 8, 17, 3, 'Good concept but execution fell short.'),
(54, 9, 18, 5, 'A classic that everyone should read.'),
(55, 10, 19, 5, 'An emotional rollercoaster!'),
(56, 11, 20, 5, 'Memorable characters and great storytelling.'),
(57, 11, 21, 4, 'A solid and engaging read.'),
(58, 12, 22, 5, 'Thrilling and hard to put down!'),
(59, 13, 23, 5, 'A haunting masterpiece.'),
(60, 14, 24, 4, 'An enjoyable sequel that adds depth.'),
(61, 15, 25, 5, 'Full of charm and wit.'),
(62, 16, 26, 5, 'A timeless story that resonates.'),
(63, 16, 27, 4, 'An intriguing mix of genres.'),
(64, 17, 28, 5, 'Dark and beautifully written.'),
(65, 18, 29, 4, 'Emotionally powerful and rich.'),
(66, 19, 30, 5, 'A touching story about family.'),
(67, 20, 31, 5, 'Unforgettable characters and moments.'),
(68, 21, 32, 3, 'A decent read, but lacking depth.'),
(69, 22, 33, 5, 'A perfect balance of history and drama.'),
(70, 23, 34, 5, 'A classic that continues to inspire.'),
(71, 24, 35, 4, 'A profound exploration of humanity.'),
(72, 25, 36, 4, 'Engaging from start to finish.');

INSERT INTO sales (sale_id, book_id, copies_sold, region, sale_year, price)
VALUES
(1, 1, 120000000, 'Global', 1997, 20),
(2, 2, 25000000, 'Global', 1949, 15),
(3, 3, 8000000, 'Global', 1985, 18),
(4, 4, 6000000, 'North America', 1987, 16),
(5, 5, 5000000, 'Asia', 1987, 14),
(6, 6, 1000000, 'Global', 2001, 22),
(7, 7, 2500000, 'Global', 1951, 12),
(8, 8, 3000000, 'Global', 1968, 10),
(9, 9, 5000000, 'Global', 1969, 18),
(10, 10, 2000000, 'Africa', 2006, 24),
(11, 11, 1500000, 'Europe', 2005, 19),
(12, 12, 80000000, 'Global', 2003, 25),
(13, 13, 10000000, 'North America', 1977, 22),
(14, 14, 3000000, 'Asia', 1998, 21),
(15, 15, 4000000, 'Europe', 1999, 18),
(16, 16, 5000000, 'Global', 2000, 15),
(17, 17, 6000000, 'North America', 2001, 14),
(18, 18, 2000000, 'Global', 2002, 22),
(19, 19, 1000000, 'Global', 2003, 20),
(20, 20, 3000000, 'Europe', 2004, 18),
(21, 21, 8000000, 'Asia', 2005, 24),
(22, 22, 5000000, 'Global', 2006, 22),
(23, 23, 7000000, 'North America', 2007, 19),
(24, 24, 3000000, 'Global', 2008, 15),
(25, 25, 6000000, 'Europe', 2009, 14),
(26, 26, 4000000, 'Global', 2010, 16),
(27, 27, 2500000, 'Asia', 2011, 18),
(28, 28, 5000000, 'Global', 2012, 20),
(29, 29, 8000000, 'North America', 2013, 22),
(30, 30, 3000000, 'Global', 2014, 25),
(31, 31, 6000000, 'Europe', 2015, 30),
(32, 32, 7000000, 'Asia', 2016, 18),
(33, 33, 4000000, 'Global', 2017, 14),
(34, 34, 5000000, 'North America', 2018, 20),
(35, 35, 3000000, 'Global', 2019, 22),
(36, 36, 2000000, 'Europe', 2020, 26),
(37, 37, 1000000, 'Asia', 2021, 24);


/*Queries*/

#EASY
# 1. What are the total number of books and total number of authors in the database?

SELECT
	(SELECT COUNT(*) FROM books) AS total_books,
	(SELECT COUNT(*) FROM authors) AS total_authors;


# 2. How many books in the database were published after the year 2000?

SELECT COUNT(*) AS books_after_2000
FROM books
WHERE publication_year > 2000;

# 3. How many authors are there for each nationality?

SELECT nationality, COUNT(*) AS author_count
FROM authors
GROUP BY nationality;

# 4. List all the distinct genres available in the database.

SELECT DISTINCT genre_name 
FROM genres;

# 5. How many books are available in each genre?

SELECT genre_name, COUNT(book_id) 
FROM books
JOIN genres
ON genres.genre_id = books.genre_id
GROUP BY genre_name;

#MODERATE
# 1. Which five authors have published the most books? Include their names and the count of their books. 

SELECT authors.author_id, authors.name, COUNT(books.book_id) AS total_books
FROM books 
JOIN authors
ON authors.author_id = books.author_id
GROUP BY 1,2 
ORDER BY 3 DESC
LIMIT 5;

# 2. What is the average rating for books in each genre? Return the genre name along with the average rating.

SELECT g.genre_name, AVG(r.rating) AS average_rating
FROM genres g
JOIN books b ON b.genre_id = g.genre_id
JOIN ratings r ON r.book_id = b.book_id
GROUP BY g.genre_name;

# 3. List books that have received an average rating of 4.5 or above.

SELECT b.book_id, b.title, r.rating AS average_rating
FROM books b
JOIN ratings r ON r.book_id = b.book_id
WHERE r.rating >= 4.5;

# 4. Identify authors who have written books in more than one genre. Include the author’s name and count of genres.

SELECT a.author_id, a.name, COUNT(DISTINCT g.genre_name) AS genre_count
FROM authors a
JOIN books b ON b.author_id = a.author_id
JOIN genres g ON g.genre_id = b.genre_id
GROUP BY a.author_id, a.name
HAVING genre_count > 1
ORDER BY genre_count DESC;

# 5. Calculate the total revenue generated by books in each genre. 

SELECT g.genre_name, SUM(s.price * s.copies_sold) AS revenue
FROM books b
JOIN genres g ON g.genre_id = b.genre_id
JOIN sales s ON s.book_id = b.book_id
GROUP BY g.genre_name
ORDER BY revenue;

# 6. Which author has generated the highest total revenue from book sales? Include the author's name and total sales.

SELECT a.name AS Author, SUM(s.copies_sold * s.price) AS Total_Sales
FROM authors a 
JOIN books b ON b.author_id = a.author_id
JOIN sales s ON s.book_id = b.book_id
GROUP BY a.name
ORDER BY Total_Sales DESC
LIMIT 1;

#HARD 
# 1.  For each author, list their highest-rated book along with the rating and genre.

WITH highest_rated_books AS (
    SELECT
		   a.name AS Author, 
           b.title AS Book, 
           g.genre_name AS Genre, 
           r.rating,
           RANK() OVER(PARTITION BY a.author_id ORDER BY r.rating DESC) AS ranking
    FROM authors a
    JOIN books b ON b.author_id = a.author_id
    JOIN genres g ON g.genre_id = b.genre_id
    JOIN ratings r ON r.book_id = b.book_id
)
SELECT Author, Book, Genre, rating
FROM highest_rated_books
WHERE ranking = 1;

# 2. Analyze the sales trends over the years by calculating the total revenue and number of books sold for each author. Show results year-wise.

SELECT 
    s.sale_year AS year,
    a.name AS author_name,
    SUM(s.copies_sold * s.price) AS total_revenue,
    SUM(s.copies_sold) AS total_books_sold
FROM sales s
JOIN books b ON s.book_id = b.book_id
JOIN authors a ON b.author_id = a.author_id
GROUP BY s.sale_year, a.name
ORDER BY s.sale_year, a.name;

# 3. Is there any correlation between the average rating of a book and its genre? Provide the average rating for each genre and rank them.

SELECT DENSE_RANK() OVER(ORDER BY AVG(r.rating) DESC) AS Ranks,
g.genre_name, AVG(r.rating) AS Average_Rating
FROM genres g
JOIN books b ON b.genre_id = g.genre_id
JOIN ratings r ON r.book_id = b.book_id
GROUP BY g.genre_name
ORDER BY Ranks;

/* 4. List the top 3 most reviewed books along with their titles, number of reviews, 
      and average rating. Also include the author’s name and genre. */

WITH ReviewCounts AS (
    SELECT 
        b.book_id,
        b.title AS Book_Title, 
        COUNT(r.rating_id) AS Review_Count
    FROM books b
    LEFT JOIN ratings r ON b.book_id = r.book_id
    GROUP BY b.book_id, b.title
),

RankedBooks AS (
    SELECT 
        book_id,
        Book_Title,
        Review_Count,
        RANK() OVER (ORDER BY Review_Count DESC) AS Ranks
    FROM ReviewCounts
)
SELECT 
    book_id,
    Book_Title,
    Review_Count
FROM RankedBooks
WHERE Ranks = 1;  

#Exporting data from tables to excel
SELECT * FROM authors;
SELECT * FROM books;
SELECT * FROM genres;
SELECT * FROM ratings;
SELECT * FROM sales;
