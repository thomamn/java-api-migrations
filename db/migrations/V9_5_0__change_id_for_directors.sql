ALTER TABLE Directors
DROP COLUMN id,
DROP COLUMN name,
ADD COLUMN id INTEGER;
TRUNCATE TABLE Directors;

ALTER TABLE Directors
ADD CONSTRAINT fk_person_id
    FOREIGN KEY(id)
        REFERENCES person(id);

