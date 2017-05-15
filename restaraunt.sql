INSERT INTO restaurant (
	name,distance,stars,category,favorite_dish,does_takeout,last_time_ate) 
	values ('House of Hoopz BBQ & Crawfish',3,4,'seafood','Crawfish',FALSE,'2017-04-20');
SELECT * FROM restaurant WHERE name='Pho Saigon'; 
SELECT favorite_dish FROM restaurant;
SELECT * FROM restaurant ORDER BY distance;
SELECT * FROM restaurant ORDER BY distance LIMIT 2;
SELECT * FROM restaurant ORDER BY stars LIMIT 2;
SELECT * FROM restaurant WHERE distance<2;
SELECT COUNT(*) FROM restaurant;
SELECT COUNT(category) FROM restaurant;
SELECT AVG(stars) FROM restaurant;
SELECT MAX(stars) FROM restaurant;