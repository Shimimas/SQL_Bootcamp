COMMENT ON TABLE person_discounts IS 'Personal discounts for persons based on order count, used to calculate pizza cost i guess';
COMMENT ON COLUMN person_discounts.id IS 'Its an id, duh...';
COMMENT ON COLUMN person_discounts.person_id IS 'foreign key column on person.id';
COMMENT ON COLUMN person_discounts.pizzeria_id IS 'foreign key column on pizzeria.id';
COMMENT ON COLUMN person_discounts.discount IS 'discount for that person';
