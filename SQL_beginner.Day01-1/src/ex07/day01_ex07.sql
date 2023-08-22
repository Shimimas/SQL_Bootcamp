SELECT
	po.order_date,
	CONCAT(p.name, ' (age:', p.age, ')') as person_information
FROM person_order po
JOIN person p ON p.id = po.person_id
ORDER by po.order_date, person_information;