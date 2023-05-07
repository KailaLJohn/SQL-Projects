--- How many unique values of "type" are there? 
SELECT COUNT(DISTINCT type)
FROM planes;

-- Match the year to the number of records.
SELECT COUNT(*)
FROM planes
WHERE year = 2004;

SELECT COUNT(*)
FROM planes
WHERE year = 2005;

SELECT COUNT(*)
FROM planes
WHERE year = 2006;
-- Identify how many records for the "engine" = 'Turbo-jet' are there.
-- Which "engine" type has the most records?
SELECT COUNT(*), engine
FROM planes
GROUP BY engine;

-- How many years is the "BOEING" manufacturer 
-- and the "757-222" model in the database?
SELECT COUNT(*), year, manufacturer, model
FROM planes
GROUP BY year, manufacturer, model
ORDER BY manufacturer;

SELECT COUNT(*), year, manufacturer, model
FROM planes
GROUP BY year, manufacturer, model
ORDER BY model;