CREATE TABLE class (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	class_name TEXT,
	num_participants INTEGER,
	names_participants INTEGER REFERENCES participants(id)
);

CREATE TABLE participants (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	email TEXT
);

CREATE TABLE attendance (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	participant INTEGER REFERENCES participants(id),
	attendance_dates INTEGER REFERENCES class_dates(id)
);

CREATE TABLE class_dates (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	class_1 TEXT,
	class_2 TEXT,
	class_3 TEXT
);

