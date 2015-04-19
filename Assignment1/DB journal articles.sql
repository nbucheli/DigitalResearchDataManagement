CREATE TABLE articles (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title TEXT,
	authors TEXT,
	acceptance TEXT #YES/NO = TEXT?,
	issue_published INTEGER
);

CREATE TABLE reviews (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	title_review TEXT,
	author TEXT,
	article_reviewed INTEGER REFERENCES articles(id)
);

