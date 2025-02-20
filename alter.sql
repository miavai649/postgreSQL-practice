SELECT * from person2

ALTER TABLE person2 
  ADD COLUMN email VARCHAR(25) DEFAULT 'default@mail.com' NOT NULL;

ALTER TABLE person2 
  DROP COLUMN email;

ALTER TABLE person2
  RENAME COLUMN age to user_age;

ALTER TABLE person2 
  alter COLUMN user_name TYPE VARCHAR(50)

ALTER Table person2 
  alter COLUMN user_age set NOT NULL;

ALTER Table person2 
  alter COLUMN user_age DROP NOT NULL;

ALTER TABLE person2 
  ADD constraint unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person2 
  DROP constraint unique_person2_user_age;

  ALTER Table person2 
    ALTER COLUMN user_age set NOT NULL

DROP TABLE student

INSERT INTO person2 VALUES(4, 'miavai', 20, 'test@gmail.com')

