CREATE SEQUENCE IF NOT EXISTS seq_person_discounts START 1;
SELECT setval('seq_person_discounts', (SELECT MAX(id) FROM person_discounts));
ALTER TABLE person_discounts ALTER id SET DEFAULT NEXTVAL('seq_person_discounts');
ALTER SEQUENCE seq_person_discounts OWNED BY person_discounts.id;