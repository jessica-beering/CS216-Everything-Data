CREATE VIEW NC_members AS
SELECT p.id, p.first_name, p.last_name, 
	r.type, r.state
FROM persons p, person_roles r
WHERE p.id = r.person_id AND state = 'NC';

SELECT*
FROM NC_members; 