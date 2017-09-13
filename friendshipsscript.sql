use friendships;
set foreign_key_checks = 0;
truncate table users;
set foreign_key_checks = 1;
INSERT INTO users (first_name, last_name, created_at, updated_at) 
VALUES
("Chris", "Baker", now(), now()),
("Jessica", "Davidson", now(), now()),
("James", "Johnson", now(), now()),
("Diana", "Smith", now(), now());

select * from friendships;

set foreign_key_checks = 0;
truncate table friendships;
set foreign_key_checks = 1;
INSERT INTO friendships (created_at, updated_at, user, friend) 
VALUES
(now(), now(), 1, 2),
(now(), now(), 1, 3),
(now(), now(), 1, 4),
(now(), now(), 4, 1),
(now(), now(), 3, 1),
(now(), now(), 2, 1);

SELECT user1.first_name, user1.last_name, user2.first_name, user2.last_name FROM users as user1
LEFT JOIN friendships ON friendships.user = user1.id 
LEFT JOIN users as user2 ON friendships.friend = user2.id;