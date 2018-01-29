SELECT state, COUNT(*)
FROM votes v, person_votes pv, person_roles r
WHERE v.result = '.*Ryan.*' AND pv.vote_id = v.id AND pv.vote = 'Ryan.*' AND pv.person_id = r.person_id
GROUP BY state;