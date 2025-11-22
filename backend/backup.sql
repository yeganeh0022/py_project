-- CREATE TABLE diseases
CREATE TABLE diseases (
    id SERIAL PRIMARY KEY,
    title VARCHAR,
    description VARCHAR,
    treatment TEXT
);

INSERT INTO diseases (id, title, description, treatment) VALUES
(1, 'Nutrient deficiency', 'Plants lack essential nutrients', NULL),
(2, 'Fungal disease', 'Fungi invade plant tissues, causing damage', NULL),
(3, 'Insect infestation', 'Insects damage plant parts', NULL),
(4, 'Viral infection', 'Viruses cause plant diseases', NULL);

-- CREATE TABLE symptoms
CREATE TABLE symptoms (
    id SERIAL PRIMARY KEY,
    description VARCHAR,
    disease_id INTEGER REFERENCES diseases(id)
);

INSERT INTO symptoms (id, description, disease_id) VALUES
(1, 'Yellowing leaves', 1),
(2, 'Stunted growth', 1),
(3, 'Wilting', 1),
(4, 'Brown spots on leaves', 2),
(5, 'Circular lesions', 2),
(6, 'Leaf drop', 2),
(7, 'Leaves are turning yellow gradually', 1);

-- Indexes (اختیاری، PostgreSQL خودش SERIAL index می‌سازد)
CREATE INDEX ix_diseases_id ON diseases (id);
CREATE INDEX ix_symptoms_id ON symptoms (id);
