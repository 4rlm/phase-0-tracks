CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);

INSERT INTO businesses (name) VALUES ("Grundy Hollow Wedding Chapel");
INSERT INTO businesses (name) VALUES ("Amir's Towing");
INSERT INTO businesses (name) VALUES ("The Beagle Nightclub");
INSERT INTO businesses (name) VALUES ("Lotus Yoga");
INSERT INTO businesses (name) VALUES ("Plumbing by Janet");


INSERT INTO users (first_name, last_name) VALUES ("Bradford", "Pitt");
INSERT INTO users (first_name, last_name) VALUES ("Angela", "Jolie");
INSERT INTO users (first_name, last_name) VALUES ("Steven", "Wonder");
INSERT INTO users (first_name, last_name) VALUES ("Holly", "Berry");
INSERT INTO users (first_name, last_name) VALUES ("Denzel", "George");


CREATE TABLE reviews(
  id INTEGER PRIMARY KEY,
  stars INT,
  comment VARCHAR(255),
  business_id INT,
  user_id INT,
  FOREIGN KEY(business_id) REFERENCES businesses(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);


###########

#Insert new data into Reviews.
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (5, "Best chapel! Got married 4 times here.", 1, 1);

INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (4, "Great towing! Gave my kids chocolate, too.", 2, 5);
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (3, "Skilled instructors, but smell really bad.", 4, 3);
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (2, "Cute chapel, but always asking for donations.", 1, 4);
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (1, "Too many creeps checking me out.", 3, 2);
INSERT INTO reviews (stars, comment, business_id, user_id) VALUES (0, "Spilled dirty toilet water all over the bathroom.", 5, 1);




######################


CREATE TABLE businesses(
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);
CREATE TABLE users(
  id INTEGER PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255)
);
CREATE TABLE reviews(
  id INTEGER PRIMARY KEY,
  stars INT,
  comment VARCHAR(255),
  business_id INT,
  user_id INT,
  FOREIGN KEY(business_id) REFERENCES businesses(id),
  FOREIGN KEY(user_id) REFERENCES users(id)
);



####################
#Requirements for Reviews Query Result
user's names, the business name, the star rating, and the comment.


SELECT
  users.first_name,
  users.last_name,
  businesses.name,
  reviews.stars,
  reviews.comment
FROM
  users, businesses, reviews
WHERE
  users.id = reviews.user_id
AND
  businesses.id = reviews.business_id;

http://www.dummies.com/programming/sql/how-to-manage-many-to-many-joins-in-sql-for-html5and-css3-programming/
##########



#############
-- Getting all names for users:
SELECT u.id, last_name
 FROM reviews rev
INNER JOIN users u ON u.id = rev.user_id
WHERE rev.user_id = X

-- Getting all names for businesses:
SELECT b.id, name
 FROM reviews rev
INNER JOIN businesses b ON b.id = rev.business_id
WHERE rev.business_id = Y

http://stackoverflow.com/questions/7296846/how-to-implement-one-to-one-one-to-many-and-many-to-many-relationships-while-de
#############
