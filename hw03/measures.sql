CREATE VIEW TP(id1, id2) AS 
SELECT id1, id2 FROM official_matches
INTERSECT
SELECT id1, id2 FROM matches;

CREATE VIEW FP(id1, id2) AS
SELECT id1, id2 FROM matches
EXCEPT
SELECT id1, id2 FROM official_matches;

CREATE VIEW FN(id1, id2) AS
SELECT id1, id2 FROM official_matches
EXCEPT
SELECT id1, id2 FROM matches;