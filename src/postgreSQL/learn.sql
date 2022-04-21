SELECT * FROM person WHERe (person.email <> '') IS TRUE ORDER BY person.email;

SELECT * FROM person WHERE LENGTH(person.email) < 16 AND person.email <> '';

SELECT * FROM person LIMIT 10 OFFSET 5;

SELECT person.id, person.birthdate FROM person WHERE person.birthdate BETWEEN '2021-01-01' AND '2021-11-01' ;

SELECT person.id, person.email FROM person WHERE person.email LIKE '%@google.%';

SELECT DISTINCT person.email, COUNT(*) FROM person GROUP BY person.email ORDER BY person.email;

SELECT DISTINCT person.email, COUNT(*) FROM person GROUP BY person.email HAVING COUNT(*) > 1 ORDER BY person.email;

SELECT DISTINCT car.model, count(*) FROM car GROUP BY car.model;

SELECT MAX(car.price) FROM car;

SELECT MIN(car.price) FROM car;

SELECT ROUND(AVG(car.price),0) FROM car;

SELECT car.make, MIN(car.price), MAX(car.price) FROM car GROUP BY car.make ORDER BY MIN(car.price);

SELECT car.make, SUM(car.price), COUNT(*) FROM car GROUP BY car.make ORDER BY SUM(car.price);

SELECT car.model, car.price, 80 as discount, ROUND(car.price * 0.80) as new_price FROM car ORDER BY ROUND(car.price);

SELECT person.firstName, COALESCE(NULLIF(person.email,''),'No email') FROM person;

SELECT COALESCE(10 / NULLIF(0,0),0);

SELECT NOW()::DATE;

SELECT (NOW() - INTERVAL '1 YEAR')::DATE;

SELECT EXTRACT(YEAR FROM NOW());

SELECT person.firstName, EXTRACT(MONTH FROM AGE(NOW(),person.birthDate)) AS month from person;

SELECT person.email, COUNT(*) FROM person GROUP BY person.email HAVING count(*) > 1;

ALTER TABLE person_null DROP CONSTRAINT IF EXISTS unique_email;
ALTER TABLE person_null ADD CONSTRAINT unique_email UNIQUE (email);

-- CREATE A CLONE TO TEST EMAIL CONSTRAINT
-- INSERT INTO person_null(firstName,lastName,email) SELECT firstName,lastName,email FROM person_null WHERE id = 1;

ALTER TABLE person DROP COLUMN IF EXISTS gender;
ALTER TABLE person ADD COLUMN IF NOT EXISTS gender VARCHAR(10) CHECK(person.gender = 'female' OR person.gender = 'male');

-- TRY TO ADD WITH gender = 'hello' --
-- INSERT INTO person (firstName, lastName, email,birthDate, gender) values ('Damien','Marchand','toto@toto.fr',NOW()::DATE,'hello'); --

SELECT count(*) FROM person;
DELETE FROM person WHERE id in (SELECT person.id FROM person ORDER BY person.id DESC LIMIT 1);
SELECT count(*) FROM person;

UPDATE person SET firstName = 'Damien', email='damien@gmail.com', gender='male' WHERE person.id = 1;

SELECT * FROM person WHERE person.id = 1;

-- INSERT DUPLICATE KEY --
INSERT INTO person (firstName, lastName, birthDate, email, id) VALUES ('Cecile', 'Prezut',NOW()::DATE,'cecile@gmail.com',1) ON CONFLICT (id) DO NOTHING;





