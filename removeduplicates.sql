
-- create
CREATE TABLE numbers (
    num INT
);

INSERT INTO numbers (num) VALUES
(1), (2), (3), (4), (5), (3), (6), (7), (8), (1), (9), (10);
SELECT num, COUNT(*) AS occurrences
FROM numbers
GROUP BY num
HAVING COUNT(*) > 1;
