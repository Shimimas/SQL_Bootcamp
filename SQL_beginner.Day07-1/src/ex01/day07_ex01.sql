SELECT name, count AS count_of_visits FROM
(SELECT person_id, count(person_id) 
FROM person_visits 
GROUP BY person_id) AS f 
JOIN
person p
ON f.person_id = p.id ORDER BY count_of_visits DESC, 1
LIMIT 4;