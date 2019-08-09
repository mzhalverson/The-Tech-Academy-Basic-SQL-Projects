

CREATE TABLE tbl_address (
	address_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	address_house INT NOT NULL,
	address_street VARCHAR(50) NOT NULL,
	address_city VARCHAR(50) NOT NULL
);


CREATE TABLE tbl_people (
	people_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	people_fname VARCHAR(50) NOT NULL,
	people_lname VARCHAR(50) NOT NULL,
	people_address INT NOT NULL CONSTRAINT fk_address_id FOREIGN KEY REFERENCES tbl_address(address_id) ON UPDATE CASCADE ON DELETE CASCADE
);


INSERT INTO tbl_address
	(address_house, address_street, address_city)
	VALUES
	(734, 'Elm Circle', 'Boston'),
	(8340, 'B Street', 'Portland'),
	(123, 'Hamilton Court', 'Chicago'),
	(458, 'Poplar Avenue', 'New York'),
	(999, 'Redwood Highway', 'Los Angeles'),
	(666, 'Happy Boulevard', 'San Francisco'),
	(42, 'Perfect Avenue', 'London')
;

SELECT * FROM tbl_address;


INSERT INTO tbl_people
	(people_fname, people_lname, people_address)
	VALUES
	('Jim', 'Smith', 4),
	('Bob', 'Jameson', 7),
	('Haley', 'Cory', 1),
	('Jack', 'Coach', 2),
	('Rachel', 'Phillip', 6),
	('Leah', 'Crow', 3),
	('Joan', 'Rocket', 5)
;

SELECT * FROM tbl_people;

SELECT 
	a1.people_fname, a1. people_lname,
	a2.address_house, a2.address_street, a2.address_city
	FROM tbl_people a1
	INNER JOIN tbl_address a2 ON a2.address_id = people_address
;


