INSERT INTO person_visits VALUES(
    (SELECT MAX(id) + 1 FROM person_visits),
    9,
    3,
    '2022-01-08'
);
REFRESH MATERIALIZED VIEW mv_dmitriy_visits_and_eats;