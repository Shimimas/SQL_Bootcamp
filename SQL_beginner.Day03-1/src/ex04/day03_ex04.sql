WITH FEM(name)
AS
(
    SELECT pz.name 
    FROM person p JOIN person_order po ON p.id=po.person_id AND p.gender='female' 
    JOIN menu m ON m.id=po.menu_id 
    JOIN pizzeria pz ON pz.id=m.pizzeria_id
),
MALE(name)
AS
(
    SELECT pz.name 
    FROM person p JOIN person_order po ON p.id=po.person_id AND p.gender='male' 
    JOIN menu m ON m.id=po.menu_id 
    JOIN pizzeria pz ON pz.id=m.pizzeria_id
),
INTER(name)
AS
(
    SELECT * FROM FEM INTERSECT SELECT * FROM MALE
)
(SELECT * FROM MALE EXCEPT SELECT * FROM INTER) UNION (SELECT * FROM FEM EXCEPT SELECT * FROM INTER) 
ORDER BY 1;