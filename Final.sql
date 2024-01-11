CREATE TABLE user
(   userid     CHAR(3)     NOT NULL,
    username   VARCHAR(25)     NOT NULL,
    usergender     VARCHAR(25)     NOT NULL,
    userage    CHAR(2)     NOT NULL,
    PRIMARY KEY (userid) );

CREATE TABLE food
(     foodid     VARCHAR(25)     NOT NULL,
      dateofconsumption     DATE     NOT NULL,
      timeofconsumption     TIME     NOT NULL,
      mealclassification     VARCHAR(25)     NOT NULL,
      quantityoffood     INT     NOT NULL,
      userid     CHAR(3)     NOT NULL,
      PRIMARY KEY (foodid),
      FOREIGN KEY (userid) REFERENCES user(userid) );
      
CREATE TABLE beverage
(     beverageid     VARCHAR(25)     NOT NULL,
      dateofbeverageconsumption     DATE     NOT NULL,
      timeofbeverageconsumption     TIME     NOT NULL,
      userid     CHAR(3)     NOT NULL,
      PRIMARY KEY (beverageid),
      FOREIGN KEY (userid) REFERENCES user(userid) );
      
CREATE TABLE purpose
(     userid     CHAR(3)     NOT NULL,
      purpose     VARCHAR(25)     NOT NULL,
      PRIMARY KEY (userid),
      FOREIGN KEY (userid) REFERENCES user(userid) );

CREATE TABLE nutrition
(     numberofcaloriesconsumed     INT     NOT NULL,
      amountoftotalsugar     INT     NOT NULL,
      amountoftotalcarbs     INT     NOT NULL,
	  userid      CHAR(3)     NOT NULL,
      PRIMARY KEY (numberofcaloriesconsumed),
      FOREIGN KEY (userid) REFERENCES user(userid) );
      
CREATE TABLE workout
(     workoutid     CHAR(2)     NOT NULL,
      workoutname     VARCHAR(25)     NOT NULL,
      numberofworkoutsessions     INT     NOT NULL,
      userid     CHAR(3)     NOT NULL,
      PRIMARY KEY (workoutid),
      FOREIGN KEY (userid) REFERENCES user(userid) );
      
INSERT INTO user VALUES ('UOT', 'Theo', 'Male', '19');
INSERT INTO user VALUES ('UTJ', 'Jessica', 'Female', '43');
INSERT INTO user VALUES ('UTA', 'Alex', 'Prefer Not to Say', '27');
INSERT INTO user VALUES ('UFH', 'Hannah', 'Female', '62');
INSERT INTO user VALUES ('UFK', 'Kristin', 'Female', '51');

INSERT INTO food VALUES ('Slice of Pizza', '2018-01-31', '19:00:30', 'Dinner', 3, 'UOT');
INSERT INTO food VALUES ('Salad', '2022-05-13', '13:30:00', 'Lunch', 1, 'UTJ');
INSERT INTO food VALUES ('Sandwich', '2020-04-14', '12:15:45', 'Lunch', 2, 'UTA');
INSERT INTO food VALUES ('Ice Cream Scoops', '2021-07-28', '22:00:50', 'Dessert', 2, 'UFH');
INSERT INTO food VALUES ('Doritos', '2020-10-18', '11:45:20', 'Snack', 25, 'UTA');
INSERT INTO food VALUES ('Gold Fish', '2021-08-25', '14:15:08', 'Snack', 50, 'UFH');
INSERT INTO food VALUES ('Slice of Cake', '2019-06-22', '21:17:12', 'Dessert', 1, 'UFK');
INSERT INTO food VALUES ('Fruit Cup', '2022-09-06', '13:22:37', 'Snack', 2, 'UTJ');
INSERT INTO food VALUES ('Eggs', '2018-11-29', '06:20:09', 'Breakfast', 2, 'UOT');
INSERT INTO food VALUES ('Slices of Bacon', '2020-12-24', '08:45:33', 'Breakfast', 3, 'UTA');
INSERT INTO food VALUES ('Bagel', '2018-04-22', '09:30:46', 'Breakfast', 1, 'UOT');
INSERT INTO food VALUES ('Chicken Nuggets', '2018-12-08', '12:40:23', 'Lunch', 6, 'UOT');
INSERT INTO food VALUES ('Fillet of Steak', '2020-01-01', '17:00:00', 'Dinner', 1, 'UTA');
INSERT INTO food VALUES ('Sushi Roll', '2021-03-12', '13:30:22', 'Lunch', 2, 'UFH');
INSERT INTO food VALUES ('Ravioli', '2021-05-22', '16:50:59', 'Dinner', 10, 'UFH');
INSERT INTO food VALUES ('Pancakes', '2019-10-13', '07:23:15', 'Breakfast', 2, 'UFK');
INSERT INTO food VALUES ('Slice of Pie', '2018-11-22', '16:00:44', 'Dessert', 1, 'UOT');
INSERT INTO food VALUES ('Fish Sticks', '2019-04-2', '19:03:00', 'Dinner', 4, 'UFK');
INSERT INTO food VALUES ('Truffles', '2020-02-14', '18:30:58', 'Dessert', 5, 'UTA');
INSERT INTO food VALUES ('Taquitos', '2019-03-21', '11:57:26', 'Lunch', 3, 'UFK');

INSERT INTO beverage VALUES ('Water', '2022-11-21', '18:29:53', 'UTJ');
INSERT INTO beverage VALUES ('Orange Juice', '2022-11-08', '08:45:30', 'UTJ');
INSERT INTO beverage VALUES ('Milkshake', '2022-07-04', '22:00:17', 'UTJ');
INSERT INTO beverage VALUES ('Coke', '2022-09-25', '15:26:48', 'UTJ');
INSERT INTO beverage VALUES ('Lemonade', '2021-07-21', '12:50:42', 'UFH');
INSERT INTO beverage VALUES ('Iced Tea', '2020-06-13', '19:00:10', 'UTA');
INSERT INTO beverage VALUES ('Dr Pepper', '2022-02-11', '09:06:04', 'UTJ');
INSERT INTO beverage VALUES ('Gatorade', '2019-11-13', '16:45:40', 'UFK');
INSERT INTO beverage VALUES ('Malt', '2018-08-06', '20:30:25', 'UOT');
INSERT INTO beverage VALUES ('Unsweet Iced Tea', '2020-09-03', '11:58:17', 'UTA');
INSERT INTO beverage VALUES ('Grape Juice', '2022-01-26', '10:30:52', 'UTJ');
INSERT INTO beverage VALUES ('Wine', '2018-09-22', '20:26:34', 'UOT');
INSERT INTO beverage VALUES ('Smoothie', '2019-02-28', '11:53:28', 'UFK');
INSERT INTO beverage VALUES ('Apple Juice', '2021-06-10', '06:15:30', 'UFH');
INSERT INTO beverage VALUES ('Sprite', '2019-05-27', '19:00:00', 'UFK');
INSERT INTO beverage VALUES ('Strawberry Lemonade', '2020-04-24', '12:25:59', 'UTA');
INSERT INTO beverage VALUES ('Grapefruit Juice', '2018-10-09', '07:10:24', 'UOT');
INSERT INTO beverage VALUES ('Milk', '2021-08-29', '06:48:00', 'UFH');
INSERT INTO beverage VALUES ('Chocolate Milk', '2018-03-15', '22:00:08', 'UOT');
INSERT INTO beverage VALUES ('Hot Chocolate', '2019-01-28', '21:13:15', 'UFK');

INSERT INTO purpose VALUES ('UOT', 'To Bulk Up');
INSERT INTO purpose VALUES ('UTJ', 'To Lose Weight');
INSERT INTO purpose VALUES ('UTA', 'Have Better Diet');
INSERT INTO purpose VALUES ('UFH', 'Health Reasons');
INSERT INTO purpose VALUES ('UFK', 'Health Reasons');

INSERT INTO nutrition VALUES (3059, 181, 370, 'UOT');
INSERT INTO nutrition VALUES (1450, 271, 301, 'UTJ');
INSERT INTO nutrition VALUES (2305, 76, 134, 'UTA');
INSERT INTO nutrition VALUES (2114, 132, 267, 'UFH');
INSERT INTO nutrition VALUES (2476, 181, 334, 'UFK');

INSERT INTO workout VALUES ('W1', 'Weight Lifting', 2, 'UOT');
INSERT INTO workout VALUES ('W2', 'Running', 1, 'UTJ');
INSERT INTO workout VALUES ('W3', 'Dancing', 2, 'UTA');
INSERT INTO workout VALUES ('W4', 'Walking', 1, 'UFH');
INSERT INTO workout VALUES ('W5', 'Swimming', 1, 'UFK');

SELECT userid, username, usergender, userage FROM user ORDER BY userage;

SELECT COUNT(*), AVG(numberofcaloriesconsumed) FROM nutrition GROUP BY userid;

SELECT foodid, quantityoffood, COUNT(*) FROM food WHERE quantityoffood >=3 GROUP BY foodid;

SELECT foodid, dateofconsumption, timeofconsumption, userid FROM food WHERE foodid IN
(SELECT foodid FROM food GROUP BY userid HAVING SUM(quantityoffood)>5);

SELECT u.userid, u.username, f.foodid FROM user u, food f WHERE u.userid = f.userid;
SELECT u.userid, u.username, b.beverageid FROM user u, beverage b WHERE u.userid = b.userid;

CREATE VIEW food_more_than_5 AS SELECT foodid, dateofconsumption, timeofconsumption FROM food WHERE foodid IN
(SELECT foodid FROM food GROUP BY userid HAVING SUM(quantityoffood) >5);

CREATE VIEW age_more_than_30 AS SELECT userid, username, usergender FROM user WHERE userid IN
(SELECT userid FROM user GROUP BY userid HAVING SUM(userage) >30);

SELECT * FROM food_more_than_5 UNION SELECT * FROM age_more_than_30

DELIMITER //
CREATE FUNCTION no_of_years(date1 date) RETURNS int DETERMINISTIC
BEGIN
DECLARE date2 DATE;
Select current_date()into date2;
RETURN year(date2)-year(date1);
END
//
DELIMITER ;