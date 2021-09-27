DROP TABLE IF EXISTS public.authors;
DROP TABLE IF EXISTS public.Books;
CREATE TABLE 
	IF NOT EXISTS
		authors(
		    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(255) NOT NULL,
			last_name VARCHAR(255) NOT NULL,
			birth_year VARCHAR(255) NOT NULL,
			country VARCHAR(255) NOT NULL,
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW()
	);
	CREATE TABLE 
	IF NOT EXISTS
		books(
		    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
			name VARCHAR(255) NOT NULL,
			category VARCHAR(255) NOT NULL,
			cover VARCHAR(255) NOT NULL,
			author_id INTEGER ,
			created_at TIMESTAMPTZ DEFAULT NOW(),
			updated_at TIMESTAMPTZ DEFAULT NOW(),
			published_at  TIMESTAMPTZ DEFAULT NOW(),
			  CONSTRAINT FK_AuthorsId FOREIGN KEY (author_id)
                REFERENCES authors(id)
	);


    INSERT INTO
	authors(
		name,
		last_name,
		birth_year,
		country
		)
		
	VALUES(
		'Ken Follett',
		'follett.',
		'07/06/1986',
		'usa'
	);
	INSERT INTO
	Books(
		name,
		category,
		cover
		)
		
	VALUES(
		'heist',
		'drama',
		'vsgzus'
	);
    UPDATE books 
SET cover = 'vamos' WHERE id = 1;
UPDATE books 
SET cover = 'nice' WHERE id = 2;
UPDATE books 
SET cover = 'great' WHERE id = 3;
SET name = 'manish' WHERE birth_year = '07/06/1956';
SELECT category FROM books 
SELECT MIN(date_birth) AS older  from authors
SELECT * FROM books where name LIKE ="a%"
SELECT Count(*) as allBooks FROM (SELECT names from books)
DELETE FROM authors WHERE country ='usa'
DELETE FROM authors WHERE category ='drama'
DELETE FROM authors WHERE country ='usa'
DELETE FROM authors WHERE last_name  LIKE='h%'