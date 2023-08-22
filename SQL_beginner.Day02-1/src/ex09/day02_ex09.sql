WITH FEMALE(id, name)
AS
(
    SELECT id, name FROM person WHERE person.gender='female'
),
FEM_ORDER(name, menu_id)
AS
(
    SELECT name, menu_id FROM FEMALE INNER JOIN person_order ON FEMALE.id=person_order.person_id
),
PEPERONI(name)
AS
(
    SELECT name FROM FEM_ORDER INNER JOIN menu ON FEM_ORDER.menu_id=menu.id AND menu.pizza_name='pepperoni pizza'
),
CHESE(name_2)
AS
(
    SELECT name AS name_2 FROM FEM_ORDER INNER JOIN menu ON FEM_ORDER.menu_id=menu.id AND menu.pizza_name='cheese pizza'
)
SELECT name FROM CHESE INNER JOIN PEPERONI 
ON CHESE.name_2=PEPERONI.name 
ORDER BY name;