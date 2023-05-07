--Return all records, sorted from oldest to newest by year.
SELECT *
FROM planes
ORDER BY year;


--Return all records, sorted from Z to A by manufacturer.
SELECT *
FROM planes
ORDER BY manufacturer DESC;


--Return all records, sorted by year, manufacturer, & model
SELECT *
FROM planes
ORDER BY year,  manufacturer, model;


--Return all records, sorted low to high by engines/high to low by seats.
SELECT *
FROM planes
ORDER BY engines, seats DESC;


--Return all records of planes built before 2000, sorted A-Z by engine.
SELECT *
FROM planes
WHERE year < 2000
ORDER BY engine;


--Top 10, sorted high to low.
SELECT *
FROM planes
ORDER BY seats DESC
LIMIT 10;


-- Top 10 of planes built before 1990, high to low by seats
SELECT *
FROM planes
WHERE year < 1990
ORDER BY seats DESC
LIMIT 10;


--number of all records/speed/year
SELECT COUNT(*) AS count_total, 
	COUNT(speed) AS count_speed, 
	COUNT(year) AS count_year
FROM planes;


--Count of speed records where year is before 1980
SELECT COUNT(speed) AS count_speed
FROM planes
WHERE year <  1980;


--Distinct values for engine field
SELECT DISTINCT engine
FROM planes;


--Distinct values for year, manufacturer, and model. Sorted by manufacturer A-z, year oldest to newest & model A-Z
SELECT DISTINCT year, manufacturer, model
FROM planes
ORDER BY manufacturer, year, model;