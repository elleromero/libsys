-- DO NOT MODIFY THIS QUERY
USE Testing_DB;

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'genres')
BEGIN
CREATE TABLE genres(
	genre_id INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(55) NOT NULL,
	description VARCHAR(255) NOT NULL,
);
END 

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'statuses')
BEGIN
CREATE TABLE statuses (
	status_id INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(20) NOT NULL,
	description VARCHAR(200) NOT NULL,
	is_available BIT NOT NULL
)
END 

-- ADDED sources --
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'sources')
BEGIN
CREATE TABLE sources (
    source_id INT PRIMARY KEY IDENTITY(1,1),
    source_name VARCHAR(55) NOT NULL
);
END

-- ADDED book_metadata -- 
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'book_metadata')
BEGIN
CREATE TABLE book_metadata (
    metadata_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	genre_id INT NOT NULL,
	title VARCHAR(100) NOT NULL,
	sypnosis VARCHAR(1500) NOT NULL,
	author VARCHAR(45) NOT NULL,
	copyright VARCHAR(55) NOT NULL,
	cover VARCHAR(500) NOT NULL,
	publisher VARCHAR(40) NOT NULL,
	publication_date DATETIME2 NOT NULL,
	added_on DATETIME2 NOT NULL,
	isbn VARCHAR(100) NOT NULL,
	edition_str VARCHAR(55) NOT NULL,
    edition_num INT NULL,
	FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
);
END

-- ADDED program -- 
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'programs')
BEGIN
CREATE TABLE programs (
    program_id INT PRIMARY KEY IDENTITY(1,1),
    program_name VARCHAR(55) NOT NULL,
	program_description VARCHAR(55)
);
END


-- I DELETE edition, ADDED FOREIGN KEY to metadata_id, sources_id --
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'books')
BEGIN
CREATE TABLE books(
	book_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	metadata_id UNIQUEIDENTIFIER NOT NULL,
	FOREIGN KEY (metadata_id) REFERENCES book_metadata(metadata_id)
);
END

-- ADD COLUMN sources_id --
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'copies')
BEGIN 
CREATE TABLE copies (
	copy_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	book_id UNIQUEIDENTIFIER NOT NULL,
	source_id INT NOT NULL,
	status_id INT NOT NULL,
	price MONEY NOT NULL,
	FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE,
	FOREIGN KEY (status_id) REFERENCES statuses(status_id),
	FOREIGN KEY (source_id) REFERENCES sources(source_id)
)
END

-- CHANGE course_year INT, ADD COLUMN program_id --
IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'members')
BEGIN
CREATE TABLE members (
	member_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	program_id INT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	course_year INT NULL,
	user_no VARCHAR(55) NOT NULL,
	address VARCHAR(200) NOT NULL,
	phone VARCHAR(13) NOT NULL,
	email VARCHAR(100) NULL,
	FOREIGN KEY (program_id) REFERENCES programs(program_id)
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'roles')
BEGIN
CREATE TABLE roles (
	role_id INT PRIMARY KEY IDENTITY(1,1),
	name VARCHAR(20) NOT NULL,
	has_access BIT NOT NULL
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'users')
BEGIN
CREATE TABLE users (
	user_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	role_id INT,
	member_id UNIQUEIDENTIFIER,
	username VARCHAR(20) NOT NULL,
    password_hash VARCHAR(500) NOT NULL,
	profile_picture VARCHAR(500) NOT NULL,
	FOREIGN KEY (role_id) REFERENCES roles(role_id) ON DELETE CASCADE,
	FOREIGN KEY (member_id) REFERENCES members(member_id) ON DELETE CASCADE
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'loans')
BEGIN
CREATE TABLE loans (
	loan_id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	user_id UNIQUEIDENTIFIER,
	copy_id UNIQUEIDENTIFIER,
	date_borrowed DATETIME2 NOT NULL,
	due_date DATETIME2 NOT NULL,
	is_returned BIT NOT NULL,
	timestamp DATETIME2 NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (copy_id) REFERENCES copies(copy_id),
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'permissions')
BEGIN
CREATE TABLE permissions (
	permission_id INT PRIMARY KEY IDENTITY(1,1),
	permission_name VARCHAR(50) UNIQUE NOT NULL
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'role_permissions')
BEGIN
CREATE TABLE role_permissions (
	role_id INT,
	permission_id INT,
	PRIMARY KEY(role_id, permission_id),
	FOREIGN KEY (role_id) REFERENCES roles(role_id),
	FOREIGN KEY (permission_id) REFERENCES permissions(permission_id),
)
END

IF NOT EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'user_permissions')
BEGIN
CREATE TABLE user_permissions (
	user_id UNIQUEIDENTIFIER,
	permission_id INT,
	PRIMARY KEY(user_id, permission_id),
	FOREIGN KEY (user_id) REFERENCES users(user_id),
	FOREIGN KEY (permission_id) REFERENCES permissions(permission_id),
)
END

-- INSERT --

INSERT INTO programs(program_name, program_description) VALUES
('BSIT', 'Bachelor of Science in Information Technology'),
('BSCPE','Bachelor of Science in Computer Engineering'),
('BSTM','Bachelor of Science in Tourism Management'),
('BSHM','Bachelor of Science in Hospitality Management'),
('BSBA','Bachelor of Science in Business Administration');

INSERT INTO sources(source_name) VALUES
('Donation'),
('School');

INSERT INTO roles (name, has_access) VALUES 
('ADMINISTRATOR', 1),
('USER', 0),
('LIBRARIAN', 1);

INSERT INTO statuses (name, description, is_available) VALUES 
('AVAILABLE', 'The book is currently available', 1),
('NOT AVAILABLE', 'The book is not available', 0),
('ON HOLD', 'The book is currently on hold', 0);

INSERT INTO genres (name, description) VALUES 
('Romance', 'Love stories exploring themes of attraction and intimacy.'),
('Fantasy', 'Transport readers to magical worlds filled with mythical creatures and supernatural powers.'),
('Paranormal', 'Books featuring ghosts, vampires, werewolves, and other paranormal elements.'),
('Horror', 'Scary stories designed to frighten readers with supernatural or psychological elements.'),
('Historical Fiction', 'Set in a specific period of history and often revolve around real-life events, people, or places.'),
('Fiction', 'Imaginative stories not based on true events or real people.'),
('Short Story', 'Collections of shorter works of fiction, often stand-alone pieces or part of a larger narrative.'),
('Spiritual', 'Explore themes of faith, religion, and spirituality from various perspectives.'),
('Classics', 'Timeless works of literature that have endured the test of time.'),
('Science Fiction', 'Set in the future or alternate realities and explore themes of technology and space exploration.'),
('Humor', 'Designed to make readers laugh through witty observations and silly situations.'),
('Mystery / Thriller', 'Designed to keep readers on the edge of their seats with suspenseful plots and surprise twists.'),
('Action / Adventure', 'Exciting stories filled with epic battles, daring escapes, and thrilling chases.'),
('Teen Fiction', 'Stories exploring themes of growing up, identity, and social issues.'),
('Poetry', 'Works of verse that use language in unique and creative ways.'),
('Non-Fiction', 'Factual writing exploring a specific topic or theme.');

DECLARE @member_id UNIQUEIDENTIFIER; SET @member_id = NEWID();

INSERT INTO members (
	first_name,
	last_name,
	user_no,
	email,
	phone,
	address,
	member_id
) VALUES (
	'John',
	'Doe',
	'02002244713',
	'admin@test.com',
	'09100813695',
	'211 baker St.',
	@member_id
);

INSERT INTO users (username, password_hash, profile_picture, role_id, member_id) VALUES (
	'admin',
	'$argon2id$v=19$m=65536,t=3,p=1$3wKJEyw8CQjpQHN2DjH7qg$uRD8wwKE4DTmjFVgunfEcH+zbdJOzi7n1/03Le70lRo',
	'',
	1,
	@member_id
);

