WITH FEM(id)
AS
(
    SELECT pizzeria_id FROM person p JOIN person_visits pv ON p.id=pv.person_id AND p.gender='female'
),
MALE(id)
AS
(
    SELECT pizzeria_id FROM person p JOIN person_visits pv ON p.id=pv.person_id AND p.gender='male'
),
INTER(id)
AS
(
    SELECT * FROM FEM INTERSECT ALL SELECT * FROM MALE
)
SELECT name FROM
((SELECT * FROM MALE EXCEPT ALL SELECT * FROM INTER) UNION ALL (SELECT * FROM FEM EXCEPT ALL SELECT * FROM INTER)) f
JOIN pizzeria pz ON f.id=pz.id ORDER BY 1;