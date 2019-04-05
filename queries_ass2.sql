--Queries file

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

SELECT AVG(salary)
FROM staff;

SELECT staff_id, surname, festival_id
FROM staff s, festivals f;

SELECT surname
FROM staff
WHERE event_id IN (
    SELECT event_id
FROM festival_staff
WHERE festival_id = "020"
);

SELECT f.festival_id, f.act, t.price, t.festival_id
FROM festivals f JOIN tickets t
    ON f.festival_id = t.festival_id;

SELECT f.festival_id, f.act, t.price, t.festival_id
FROM festivals f JOIN tickets t
    ON f.festival_id = t.festival_id
    JOIN festival_staff f
    ON f.festival_id = fs.festival_id
ORDER BY price;