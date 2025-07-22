-- LIMIT and ALIASING

-- Limit is just going to specify how many rows you want in the output

-- if we change something like the order or use a group by it would change the output

SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY first_name
LIMIT 3,2;

SELECT *
FROM employee_demographics
ORDER BY age desc;
-- we can see it's Donna - let's try to select her

SELECT *
FROM employee_demographics
ORDER BY age desc
LIMIT 2,1;


-- ALIASING

-- aliasing is just a way to change the name of the column (for the most part)
-- it can also be used in joins, but we will look at that in the intermediate series


SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender
;
-- we can use the keyword AS to specify we are using an Alias
SELECT gender, AVG(age) AS Avg_age
FROM employee_demographics
GROUP BY gender
;

SELECT gender, AVG(age) Avg_age
FROM employee_demographics
GROUP BY gender
;




