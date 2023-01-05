CREATE TABLE customer(
	customer_id serial PRIMARY KEY,
	first_name varchar(30) NOT NULL,
	last_name varchar(30) NOT NULL,
	email varchar(50) NOT NULL,
	vip_member boolean NOT NULL
);

SELECT *
FROM customer;

CREATE TABLE movie(
	movie_id serial PRIMARY KEY,
	movie_title varchar(50) NOT NULL,
	duration integer NOT NULL,
	release_year integer NOT NULL
);

SELECT *
FROM movie;

CREATE TABLE ticket(
	ticket_id serial PRIMARY KEY,
	movie_id integer NOT NULL,
	customer_id integer NOT NULL,
	ticket_price NUMERIC(4,2) NOT null
);

ALTER TABLE ticket ADD CONSTRAINT fk_movie_id
FOREIGN KEY (movie_id) REFERENCES movie(movie_id);

ALTER TABLE ticket ADD CONSTRAINT fk_customer_id
FOREIGN KEY (customer_id) REFERENCES customer(customer_id);

SELECT *
FROM ticket;