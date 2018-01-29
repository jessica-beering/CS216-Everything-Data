SELECT v.id, v.type, p.person_id
FROM votes v, person_roles p
WHERE v.type = 'Election of the Speaker' AND v.id = p.person_id;