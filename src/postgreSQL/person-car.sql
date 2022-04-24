DROP TABLE IF EXISTS person;
DROP TABLE IF EXISTS car;
CREATE TABLE car (
  id SERIAL PRIMARY KEY,
  make VARCHAR(100) NOT NULL CHECK(make <> ''),
  model VARCHAR(100) NOT NULL CHECK(model <> ''),
  price NUMERIC(26, 2) NOT NULL CHECK(price > 0)
);
CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR(50) NOT NULL CHECK(firstName <> ''),
  lastName VARCHAR(50) NOT NULL CHECK(lastName <> ''),
  email VARCHAR(100) UNIQUE,
  car_id BIGINT REFERENCES car (id) UNIQUE
);
insert into
  person (firstName, lastName, email)
values
  ('Nanete', 'Grzeszczyk', 'ngrzeszczyk1@wisc.edu');
insert into
  person (firstName, lastName, email)
values
  (
    'Jacklin',
    'Dunderdale',
    'jdunderdale2@amazon.com'
  );
insert into
  person (firstName, lastName, email)
values
  ('Timmie', 'Polland', 'tpolland7@drupal.org');
insert into
  person (firstName, lastName, email)
values
  ('Aurea', 'Asp', 'aasp8@seattletimes.com');
insert into
  person (firstName, lastName, email)
values
  ('Taryn', 'Nibley', null);
insert into
  car (make, model, price)
values
  ('Pontiac', '6000', 906707.47);
insert into
  car (make, model, price)
values
  ('Ford', 'Econoline E250', 429396.45);
insert into
  car (make, model, price)
values
  ('Honda', 'Accord', 40218.92);
insert into
  car (make, model, price)
values
  ('Mitsubishi', 'Mighty Max Macro', 788445.36);
insert into
  car (make, model, price)
values
  ('Mercedes-Benz', 'S-Class', 945774.95);
UPDATE
  person
SET
  car_id = 1
WHERE
  person.id = 1;
-- UPDATE person SET car_id = 1 WHERE person.id = 2; cause UNIQUE
UPDATE
  person
SET
  car_id = 2
WHERE
  person.id = 3;
-- UPDATE person SET car_id = 9 WHERE person.id = 2; cause car.id = 9 not exist
  -- INNER JOINS
SELECT
  *
FROM
  person
  JOIN car ON person.car_id = car.id;
SELECT
  person.firstname,
  car.model,
  car.price
FROM
  person
  JOIN car ON person.car_id = car.id;
-- LEFT JOIN
SELECT
  person.firstname,
  car.model
FROM
  person
  LEFT JOIN car ON person.car_id = car.id;
-- DELETE
DELETE from
  person
WHERE
  person.id = 1;
DELETE from
  car
WHERE
  car.id = 1;