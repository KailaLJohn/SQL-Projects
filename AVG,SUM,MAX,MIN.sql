--Average temp for month 10
SELECT ROUND(AVG(temp), 0) AS avg_temp, month
FROM weather
WHERE month = 10
GROUP BY month;


--Origin with highest total precip?
SELECT MAX(precip) AS max_precip, origin
FROM weather
GROUP BY origin
ORDER BY max_precip DESC;

--Month with highest temp recorded? 
SELECT AVG(temp) AS avg_temp, MIN(temp) AS min_temp, MAX(temp) AS max_temp, month, day
FROM weather
GROUP BY month, day
ORDER BY max_temp DESC;


--Find min visibility for each origin/month, sorted low-high. 
SELECT MIN(visib) AS min_visibility, origin, month
FROM weather
GROUP BY origin, month
ORDER BY min_visibility;


--Find min visibility for each origin/month, sorted high-low.
SELECT MIN(visib) AS min_visibility, origin, month
FROM weather
GROUP BY origin, month
ORDER BY min_visibility DESC ;