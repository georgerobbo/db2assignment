SELECT staff_id, firstname, surname
FROM staff
WHERE surname LIKE 'S%';

SELECT festival_id
FROM festivals
WHERE capacity > '30,001';

SELECT s.address.street, s.address.city, s.address.country 
FROM staff s;

SELECT staff_id, firstname, surname, salary
FROM staff
WHERE salary
BETWEEN '20,000'
AND '25,000';

SELECT AVG(salary) FROM staff;

