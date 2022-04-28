/*Step 1: create db*/
CREATE DATABASE shirts_db;

/*Step 2: create a new table*/
CREATE TABLE shirts(
 shirt_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 article VARCHAR(45),
 color VARCHAR(45),
 shirt_size VARCHAR(1),
 last_worn INT
);

SHOW TABLES;
DESC shirts;

/*Step 3: Populate the table with the following data*/
INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES ('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);

/*1. Get all that data in there with a single line.*/
SELECT * FROM shirts;

/*2. Add a new shirt, purple polo shirt, size M last worn 50 days ago*/
INSERT INTO shirts(article,color,shirt_size,last_worn)
VALUES('polo shirt','purple','M',50);

/*3. SELECT all shirts but only print out article and color*/
SELECT article,color
FROM shirts;

/*4. SELECT all medium shirts and print out everything but shirt_id*/
SELECT article,color,shirt_size,last_worn FROM shirts
WHERE shirt_size = 'M';

/*5. Update all polo shirts Change their size to L*/
UPDATE shirts
SET shirt_size = 'L'
WHERE article = 'polo shirt';

/*6. Update the shirt last worn 15 days ago change last_worn to zero ('0')*/
UPDATE shirts
SET last_worn = 0
WHERE last_worn = 15;

/*7. Update all white shirts and change size to 'XS' and color to 'off white'*/
UPDATE shirts
SET color = 'off white',
 shirt_size = 'XS'
WHERE color = 'white';

/*8. Delete all old shirts that were last worn 200 days ago*/
DELETE FROM shirts
WHERE last_worn = 200;

/*9. Delete all tank tops. Your tastes have changed...*/
DELETE FROM shirts
WHERE article = 'tank top';

/*10. Delete all shirts. You are doing some major spring cleaning!*/
DELETE FROM shirts;

/*11. Drop the entire shirts table. Scraping everything... you must be rich or something!*/
DROP TABLE shirts;