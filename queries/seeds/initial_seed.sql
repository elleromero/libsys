-- REVISE THE COLUMNS TO ACCOMODATE THE SETUP SEED

USE Testing_DB;

DECLARE @book_id UNIQUEIDENTIFIER;
DECLARE @counter INT; SET @counter = 0;

-- BOOK 1 --
SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 1, 'The Millionaires Mind', 'A Motivational bussiness minded.', '123456789', 'Thomas J. Stanley', 'Copyright 2023', 'Source 1', '../../../resources/assets/defaults/books/The Millionaires Mind.jpg', 'Open Road Integrated Media', '2010-12-03', '2023-06-16', 10.99, '9780795314834');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 2 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 2, 'The Hobbit', 'A fantasy tale in which a hobbit sets out to regain a stolen treasure called the rings.', '987654321', 'J.R.R. Tolkien', 'Copyright 2002', 'Source 2', '../../../resources/assets/defaults/books/The Hobbit.jpg', 'HMH Books for Young Readers', '2002-02-28', '2023-06-16', 12.99, '9780618260300');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 3 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 3, 'The Lord of the Rings', 'One Ring to rule them all, One Ring to find them, One Ring to bring them all and in the darkness bind them', '789789789', 'J.R.R. Tolkien', 'Copyright 2005', 'Source 3', '../../../resources/assets/defaults/books/The Lord of the Rings.jpg', 'Mariner Books', '2005-06-25', '2023-06-16', 19.99, '9780618640157');


WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 4 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 4, 'The Call of Cthulhu and Other Weird Stories', 'The most merciful thing in the world, I think, is the inability of the human mind to correlate all its contents.', '111222333', 'H. P. Lovecraft', 'Copyright 1999', 'Source 4', '../../../resources/assets/defaults/books/The Call of Cthulhu and Other Weird Stories.jpg', 'Penguin Classics', '1999-03-09', '2023-06-16', 13.99, '9780141182346');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 5 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 5, 'The Adventures of Sherlock Holmes', 'Matching of the wits of a clever man against the dumb resistance of the secrecy of inanimate things, which results in the triumph of human intelligence.', '123123123', 'Arthur Conan Doyle', 'Copyright 1998', 'Source 5', '../../../resources/assets/defaults/books/The Adventures of Sherlock Holmes.jpg', 'Oxford University Press', '1998-10-22', '2023-06-16', 14.99, '9780192835086');


WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 6 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 6, 'The Chronicles of Narnia', 'A series of fantasy novels set in the magical land of Narnia.', '456456456', 'C.S. Lewis', 'Copyright 2002', 'Source 6', '../../../resources/assets/defaults/books/The Chronicles of Narnia.jpg', 'HarperCollins', '2002-10-01', '2023-06-16', 11.99, '9780064471190');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 7 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 7, 'The Count of Monte Cristo', 'An adventure novel about a man seeking revenge against those who wronged him.', '444555666', 'Alexandre Dumas', 'Copyright 2003', 'Source 7', '../../../resources/assets/defaults/books/The Count of Monte Cristo.jpg', 'Penguin Classics', '2003-08-28', '2023-06-16', 18.99, '9780140449266');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 8 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 8, 'The Mysterious Island', 'The book tells the adventures of five American prisoners of war on an uncharted island in the South Pacific.', '777888999', 'Jules Verne', 'Copyright 2004', 'Source 8', '../../../resources/assets/defaults/books/The Mysterious Island.jpg', 'Modern Library', '2004-08-28', '2023-06-16', 14.99, '9780812972122');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 9 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 9, 'The Strange Case of Dr. Jekyll and Mr. Hyde', 'The gripping novel of a London lawyer who investigates strange occurrences surrounding his old friend, Dr. Henry Jekyll, and the misanthropic Mr. Edward Hyde.', '111000222', 'Robert Louis Stevenson', 'Copyright 2004', 'Source 9', '../../../resources/assets/defaults/books/The Strange Case of Dr. Jekyll and Mr. Hyde.jpg', 'Modern Library', '2004-08-28', '2023-06-16', 16.99, '9780812972122');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 10 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 10, 'The Story of My Life', 'This is the autobiography written by the amazing deafblind woman Helen Keller at the early age of 22.', '333444555', 'Helen Keller', 'Copyright 2001', 'Source 10', '../../../resources/assets/defaults/books/The Story of My Life.jpg', 'Penguin Classics', '2001-05-01', '2023-06-16', 12.99, '9780140439151');


WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 11 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 11, 'The Adventures of Huckleberry Finn', 'The drifting journey of Huck and his friend Jim, a runaway slave, down the Mississippi River on their raft may be one of the most enduring images of escape and freedom in all of American literature.', '444555666', 'Mark Twain', 'Copyright 2002', 'Source 11', '../../../resources/assets/defaults/books/The Adventures of Huckleberry Finn.jpg', 'Penguin Classics', '2002-12-31', '2023-06-16', 14.99, '9780140439151');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 12 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 12, 'Frankenstein', 'A Gothic novel about a scientist who creates a monster.', '777888999', 'Mary Shelley', 'Copyright 1818', 'Source 12', '../../../resources/assets/defaults/books/Frankenstein.jpg', 'Dover Publications', '1818-01-01', '2023-06-16', 17.99, '9780486282114');

WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 13 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 13, 'Hunger Games', 'A dystopian novel about a young girl fighting for survival in a televised competition.', '111222333', 'Suzanne Collins', 'Copyright 2008', 'Source 13', '../../../resources/assets/defaults/books/Hunger Games.jpg', 'Scholastic Press', '2008-09-14', '2023-06-16', 16.99, '9780439023481');


WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 14 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 14, 'The Book Thief', 'A story about a girl who steals books during World War II.', '999888777', 'Markus Zusak', 'Copyright 2007', 'Source 14', '../../../resources/assets/defaults/books/The Book Thief.jpg', 'Knopf Books for Young Readers', '2007-03-14', '2023-06-16', 19.99, '9780375842207');


WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 15 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 15, 'The Da Vinci Code', 'A thriller involving a symbologist and a conspiracy involving the Holy Grail.', '111000444', 'Dan Brown', 'Copyright 2018', 'Source 15', '../../../resources/assets/defaults/books/The Da Vinci Code.jpg', 'Corgi', '2018-04-01', '2023-06-16', 16.99, '9780307474278');


WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END

-- BOOK 16 --
SET @counter = 0;

SET @book_id = NEWID();
INSERT INTO books (book_id, genre_id, title, sypnosis, contact_number, author, copyright, sources, cover, publisher, publication_date, added_on, price, isbn) VALUES (@book_id, 16, 'The Odyssey', 'An epic poem about the hero Odysseus and his journey home.', '222333444', 'Homer', 'Copyright 2008', 'Source 16', '../../../resources/assets/defaults/books/The Odyssey.jpg', 'Oxford University Press', '2008-09-10', '2023-06-16', 12.99, '9780199536788');


WHILE @counter < CAST(RAND() * 6 AS INT)
BEGIN
INSERT INTO copies (book_id, status_id) VALUES (@book_id, 1);
SET @counter = @counter + 1
END


