CREATE TABLE "user"(
  id SERIAL PRIMARY KEY,
  user_name VARCHAR(50) NOT NULL
);

CREATE Table post(
  id SERIAL PRIMARY KEY,
  title text NOT NULL,
   user_id INTEGER REFERENCES "user"(id) on DELETE set DEFAULT DEFAULT 1
);

DROP Table "user";

DROP Table post;

ALTER Table post alter COLUMN user_id set NOT NULL;

INSERT INTO "user" (user_name) VALUES
('john_doe'),
('jane_doe'),
('alice_smith'),
('bob_johnson'),
('charlie_brown');

INSERT INTO post (title, user_id) VALUES
('Enjoying a sunny day with Akash!', 1),
('Post 2', 1),
('Post 3', 2),
('Post 4', 3),
('Post 5', 3);

INSERT INTO post (title, user_id) VALUES('test', NULL);

SELECT * from "user";

SELECT * FROM post;

DELETE FROM "user" WHERE id = 2;

