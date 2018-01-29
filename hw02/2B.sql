CREATE VIEW state_age AS 
SELECT p.id, (date_part('year', current_date) - date_part('year', p.birthday)) AS age, r.person_id, r.state, COUNT(*)
FROM persons p, person_roles r
WHERE p.id = r.person_id;
GROUP BY state;

SELECT state, age
FROM state_age
ORDER BY state DESC LIMIT 1;