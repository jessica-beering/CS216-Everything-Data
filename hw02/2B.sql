SELECT s1.state, COUNT(*) as counter
FROM (SELECT state FROM cur_members
ORDER BY birthday DESC LIMIT 25) AS s1
GROUP BY s1.state
ORDER BY counter DESC LIMIT 1;