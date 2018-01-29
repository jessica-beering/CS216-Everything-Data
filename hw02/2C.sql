CREATE VIEW members AS
SELECT p.id, p.first_name, p.last_name, p.birthday, 
	r.type, r.party, r.state, r.start_date, r.end_date
FROM persons p, person_roles r
WHERE p.id = r.person_id;

SELECT first_name, last_name, birthday, start_date, end_date
FROM members
WHERE state = 'NC' AND party = 'Democrat' AND type = 'sen'
ORDER BY start_date DESC;