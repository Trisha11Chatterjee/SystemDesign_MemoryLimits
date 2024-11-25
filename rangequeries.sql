
-- create
CREATE TABLE data (
    id INT PRIMARY KEY,
    value FLOAT
);

INSERT INTO data (id, value) VALUES
(1, 10.5), (2, 20.0), (3, 15.0), (4, 25.5), (5, 30.0);
SELECT * FROM data WHERE value BETWEEN 15.0 AND 25.0;

