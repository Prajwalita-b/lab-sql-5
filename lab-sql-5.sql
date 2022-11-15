use sakila;
select first_name, last_name from customer order by first_name desc;
select * from staff;
alter table staff drop column picture; -- Q1
insert into staff (first_name, last_name, address_id, email, store_id, active, username, password) values( 'TAMMY', "SANDERS", 79, "TAMMY.SANDERS@sakilacustomer.org", 2, 1, "TAMMY", "abcd"); -- Q2
select * from customer where first_name = 'CHARLOTTE' and last_name = 'HUNTER';
select film_id from film where title = "ACADEMY DINOSAUR";
select * from inventory where film_id = 1;
select * from staff where last_name = 'Hillyer';
select * from rental where inventory_id = 1;
insert into rental (inventory_id, customer_id, staff_id) values( 1, 130, 1); -- Q3
select count(active) from customer where active = 0;
create table deleted_users (
  `customer_id` int UNIQUE NOT NULL, -- AS PRIMARY KEY
  `email` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL, -- char() , varchar(255)
   CONSTRAINT PRIMARY KEY (customer_id)  -- constraint keyword is optional but its a good practice
); -- Q4

INSERT INTO deleted_users (customer_id, email, date )
SELECT customer_id, email, create_date FROM  customer
WHERE active = 0; -- Q4

select * from deleted_users;

select * from customer where active = 0;
SET FOREIGN_KEY_CHECKS=0; -- Q4
DELETE FROM customer WHERE active = 0; -- Q4
SET FOREIGN_KEY_CHECKS=1; -- Q4
select * from customer where active = 0;