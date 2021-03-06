DROP TABLE tickets;
DROP TABLE showtimes;
DROP TABLE films;
DROP TABLE customers;


CREATE TABLE customers (
id SERIAL4 primary key,
name VARCHAR(255),
funds NUMERIC(6,2)
);


CREATE TABLE films (
id SERIAL4 primary key,
title VARCHAR(255),
price NUMERIC(6,2)
);

CREATE TABLE showtimes(
id SERIAL4 primary key,
showtime VARCHAR(255)
);

CREATE TABLE tickets(
id SERIAL4 primary key,
customer_id INT4 REFERENCES customers(id) ON DELETE CASCADE,
film_id INT4 REFERENCES films(id) ON DELETE CASCADE,
showtime_id INT4 REFERENCES showtimes(id) ON DELETE CASCADE
);






