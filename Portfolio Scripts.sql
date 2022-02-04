SELECT *
FROM dataset_1;

SELECT weather, temperature 
FROM dataset_1
LIMIT 10;

SELECT DISTINCT passanger 
FROM dataset_1;

SELECT *
FROM dataset_1
WHERE passanger = 'Alone'
AND destination = 'Home';

SELECT *
FROM dataset_1
WHERE passanger = 'Alone'
OR time  = '2pm';f



SELECT *
FROM dataset_1
WHERE passanger = 'Alone'
OR time  = '2pm'
ORDER BY time  DESC 

SELECT destination, time, AVG(temperature) as "Avg_temp", COUNT(temperature) as "Count_temp", SUM(temperature) as "Sum_temp"
FROM dataset_1 d 
WHERE time <> "10PM"
-- HAVING occupation = 'Student'
GROUP BY destination, time;

SELECT *
FROM dataset_1 d 
UNION
SELECT *
FROM table_to_union ttu 


SELECT *
FROM table_to_join ttj 

SELECT destination, d.time,ttj.part_of_day
FROM dataset_1 d 
LEFT JOIN table_to_join ttj 
ON d.time = ttj.time;


SELECT * 
FROM dataset_1 d 
WHERE d.time LIKE '%P%'

