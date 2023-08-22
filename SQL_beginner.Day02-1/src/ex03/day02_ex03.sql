WITH TABLE_CTE (person_id, visit_date)
AS
(
    SELECT person_id, visit_date 
    FROM person_visits WHERE person_id=1 OR person_id=2
),
TABLE_CTE_2 (date)
AS
(
    SELECT DATE(generate_series) 
    FROM generate_series('2022-01-01'::date, '2022-01-10', '1 day')
)
SELECT date FROM (SELECT * FROM TABLE_CTE RIGHT JOIN TABLE_CTE_2
ON TABLE_CTE_2.date=TABLE_CTE.visit_date) AS third WHERE third.visit_date IS NULL ORDER BY date;