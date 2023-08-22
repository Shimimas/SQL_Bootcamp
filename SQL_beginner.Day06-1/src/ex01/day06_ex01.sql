TRUNCATE person_discounts;

INSERT INTO person_discounts(id, person_id, pizzeria_id, discount)
	SELECT
		((SELECT COALESCE(MAX(id), 0) FROM person_discounts) + ROW_NUMBER() OVER()) AS id,
		person_id,
		m.pizzeria_id,
		CASE
			WHEN COUNT(*) = 1 THEN 10.5
			WHEN COUNT(*) = 2 THEN 22
			ELSE 30
		END as discount
	FROM person_order INNER JOIN menu as m ON m.id = person_order.menu_id
	GROUP BY person_id, m.pizzeria_id;
