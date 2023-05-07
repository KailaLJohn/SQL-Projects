-Pull/view table
SELECT *
FROM people;

--Average height of players born after 1950 in each country. Sort from high-low. Max height <=75.
SELECT AVG(height) AS avg_height, birthcountry
FROM people
WHERE birthyear > 1950
GROUP BY birthcountry 
HAVING MAX(height) <=75
ORDER BY avg_height DESC;


--For each birthyear, find avg weight of players who bat&throw w/ left. Keep birth yrs w/ 200+ avg weight.
SELECT ROUND(AVG(weight), 0) AS avg_weight, birthyear
FROM people
WHERE bats = 'L'
AND throws = 'L'
GROUP BY birthyear
HAVING ROUND(AVG(weight), 0) > 200
ORDER BY ROUND(AVG(weight), 0) DESC;


--Batting hand with highest average height weighing over 200lbs?
SELECT  ROUND(AVG(height), 0) AS avg_height, bats
FROM people
WHERE weight > 200
GROUP BY bats
ORDER BY avg_height DESC;


--Avg weight of players born in USA and bat-left (rounded)
SELECT ROUND(AVG(weight), 0) AS avg_weight
FROM people
WHERE bats = 'L'
AND birthcountry = 'USA';


--Height of the tallest player(David)
SELECT ROUND(MAX(height),0) AS max_height
FROM people
WHERE namefirst = 'David';
