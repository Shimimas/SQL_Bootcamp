SELECT
	po.order_date,
	CONCAT(p.name, ' (age:', p.age, ')') as person_information
FROM person_order po
NATURAL JOIN (SELECT p.id as person_id, p.name, p.age FROM person p) p
ORDER by po.order_date, person_information;