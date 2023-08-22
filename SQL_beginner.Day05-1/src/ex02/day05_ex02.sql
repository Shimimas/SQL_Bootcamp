CREATE INDEX idx_person_name ON person (upper(name));
SET enable_seqscan TO 'off';
EXPLAIN ANALYZE
SELECT name FROM person WHERE upper(name) = upper(name);
SET enable_seqscan TO 'on';
