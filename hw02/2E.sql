SELECT first_name, last_name
FROM persons p, person_roles r,
(SELECT pv.vote AS nominees, v.date AS vote_date
	FROM votes v, person_votes pv
	WHERE v.result = '.*Ryan.*' AND pv.vote_id = v.id
	GROUP BY pv.vote, v.date) AS noms
WHERE p.id = r.person_id AND noms.nominees LIKE (p.last_name | | '%')
	AND r.start_date <= noms.vote_date AND r.end_date >= noms.vote_date
	AND (last_name != 'RYAN' OR r.state = 'WI'); 