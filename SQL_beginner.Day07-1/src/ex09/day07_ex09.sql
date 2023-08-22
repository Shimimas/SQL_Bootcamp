SELECT address,
       MAX(age) - (MIN(age) / MAX(age)) AS formula,
       ROUND(AVG(age), 2) AS average,
       MAX(age) - (MIN(age) / MAX(age)) > ROUND(AVG(age), 2) AS comparison
FROM person
GROUP BY address
ORDER BY address