WITH DMITRY_TABLE(pizzeria_id_id)
AS
(
    SELECT pizzeria_id AS pizzeria_id_id FROM person_visits INNER JOIN person ON person.id=person_visits.person_id AND person.name='Dmitriy' AND person_visits.visit_date='2022-01-08'
),
MENU_WITH_ID(pizzeria_id)
AS
(
    SELECT pizzeria_id FROM DMITRY_TABLE INNER JOIN menu ON menu.pizzeria_id=DMITRY_TABLE.pizzeria_id_id AND menu.price < 800
)
SELECT name FROM pizzeria INNER JOIN MENU_WITH_ID ON MENU_WITH_ID.pizzeria_id=pizzeria.id;


