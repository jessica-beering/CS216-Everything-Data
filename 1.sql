CREATE VIEW members AS
SELECT p.id, p.first_name, p.last_name, r.state, r.type
FROM persons p, person_roles r
WHERE p.id = r.person_id;

SELECT first_name, COUNT(*)
FROM members
WHERE state = 'NC' AND type = 'sen'
GROUP BY first_name;