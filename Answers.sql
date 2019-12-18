CREATE TABLE person (id SERIAL PRIMARY KEY, name VARCHAR(100), 
                     age INTEGER, height INTEGER, city VARCHAR(100),
                     favorite_color VARCHAR(100));

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Travis Riffle', 40, 190, 'Carrollton', 'Blue'),
        ('Rylan Riffle', 11, 165, 'Carrollton', 'Purple'),
        ('Phoenix Shane', 35, 160, 'Carrollton', 'Rainbow'),
        ('Samara Riffle OConnell', 3, 90, 'Carrollton', 'Green'),
        ('Simon Bughuul Riffle OConnell', 1, 30, 'Carrollton', 'Red');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height ASC;

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'Red';

SELECT * FROM person
WHERE favorite_color != 'Red' AND favorite_color != 'Blue';

SELECT * FROM person
WHERE favorite_color = 'Orange' OR favorite_color = 'Green';

SELECT * FROM person
WHERE favorite_color IN ('Orange', 'Green', 'Blue');

SELECT * FROM person
WHERE favorite_color IN ('Yellow', 'Purple');

CREATE TABLE orders (order_id SERIAL PRIMARY KEY, person_id INTEGER,
                     product_name VARCHAR(200), product_price NUMERIC,
                     quantity INTEGER);

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (11, 'Hat', 12.34, 1),
	(12, 'Shirt', 23.45, 2),
        (13, 'Sweater', 34.56, 1),
        (14, 'Jacket', 45.67, 1),
        (15, 'USB Drive', 8.90, 3);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity)
FROM orders WHERE person_id = 11;

INSERT INTO artist (name)
VALUES ('ArtistOne'),
	('ArtistTwo'),
        ('ArtistThree');

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist
WHERE name LIKE '%Black%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT MAX(birth_date) FROM employee;

SELECT MIN(birth_date) FROM employee;

SELECT * FROM employee
WHERE first_name = 'Nancy' AND last_name = 'Edwards';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;