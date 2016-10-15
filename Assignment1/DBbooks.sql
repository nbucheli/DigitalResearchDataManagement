CREATE TABLE book (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	authors TEXT,
	publication_year DATE,
	publisher TEXT
);

CREATE TABLE people (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	adress TEXT,
	email_adress TEXT,
	phone_number TEXT
);

CREATE TABLE borrowing_process (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	book_title INTEGER REFERENCES book(id),
	mode_of_borrowing TEXT,
	starting DATE,
	due DATE,
	return_date DATE,
	borrower INTEGER REFERENCES people(id)
);

