DROP TABLE tickets;
DROP TABLE films;
DROP TABLE customers;


CREATE TABLE customers (
id SERIAL4 primary key,
name VARCHAR(255),
funds REAL
);


CREATE TABLE films (
id SERIAL4 primary key,
title VARCHAR(255),
price REAL
);

CREATE TABLE tickets(
id SERIAL4 primary key,
customer_id INT4 REFERENCES customers(id) ON DELETE CASCADE,
film_id INT4 REFERENCES films(id) ON DELETE CASCADE
);


