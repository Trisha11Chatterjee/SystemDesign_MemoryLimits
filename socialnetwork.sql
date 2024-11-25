
-- create
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE friendships (
    user_id INT,
    friend_id INT,
    PRIMARY KEY (user_id, friend_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (friend_id) REFERENCES users(user_id)
);
INSERT INTO users (user_id, name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'David'),
(5, 'Eve');

INSERT INTO friendships (user_id, friend_id) VALUES
(1, 2), (1, 3),
(2, 4),
(3, 4), (3, 5),
(4, 5);

SELECT u.name AS friend_name
FROM friendships f
JOIN users u ON f.friend_id = u.user_id
WHERE f.user_id = 1;

