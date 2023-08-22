SELECT date FROM (SELECT * FROM (SELECT person_id, visit_date FROM person_visits WHERE person_id=1 OR person_id=2) AS first
RIGHT JOIN
(SELECT DATE(generate_series) FROM generate_series('2022-01-01'::date, '2022-01-10', '1 day')) AS second
ON second.date=first.visit_date) AS third WHERE third.visit_date IS NULL ORDER BY date;


SELECT g::date AS missing_date
FROM (SELECT * FROM person_visits po WHERE person_id IN (1, 2)) AS po RIGHT JOIN
generate_series('2022-01-01', '2022-01-10', interval '1 day') AS g on po.visit_date=g
WHERE po.id IS NULL
ORDER BY 1;