SELECT id, first_name, last_name
FROM persons
WHERE (SELECT COUNT(DISTINCT(type)) FROM person_roles 
WHERE person_id = id AND state = 'NC') = 2;