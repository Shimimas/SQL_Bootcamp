WITH COUNTRY(name, menu_id)
AS
(
    SELECT name, menu_id FROM person 
    INNER JOIN person_order 
    ON person.id=person_order.person_id 
    AND (person.address='Moscow' OR person.address='Samara') 
    AND person.gender='male'
)
SELECT name FROM COUNTRY INNER JOIN menu 
ON menu.id=COUNTRY.menu_id AND (menu.pizza_name='pepperoni pizza' OR menu.pizza_name='mushroom pizza')
ORDER BY name DESC;
