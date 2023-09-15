-- Clue #1
-- What country has the lowest population in Southern Europe?
SELECT name FROM country
WHERE region = 'Southern Europe'
ORDER BY population ASC
LIMIT 1;

Holy See (Vatican City State)

-- Clue #2
-- What language is spoken in Holy See?
SELECT language FROM countrylanguage
INNER JOIN country
ON countrycode = code
WHERE name = 'Holy See (Vatican City State)';

Italian

-- Clue #3
-- Which nearby country speaks only Italian?
SELECT name FROM country
INNER JOIN countrylanguage
ON code = countrycode
WHERE percentage = 100
AND language = 'Italian';

San Marino

-- Clue #4
-- What city might Carmen Sandiego be flying to in the country?
SELECT * FROM city
JOIN country
ON countrycode = code
WHERE country.name = 'San Marino'

Serravalle

-- Clue #5
-- What is the capital city of San Marino?
SELECT * FROM city
INNER JOIN country
ON id = capital
WHERE city.name = 'San Marino'

San Marino

-- Clue #6
-- Find a city in South America whose name is like San Marino but doesn't end the same.
SELECT * FROM city
INNER JOIN country
ON countrycode = code
WHERE city.name LIKE '%San%'
AND region = 'South America'
LIMIT 1

San Miguel de Tucuman, Argentina

-- Clue #7
-- Find a city with a population of 91084
SELECT * FROM city
WHERE population = 91084

Santa Monica, CA