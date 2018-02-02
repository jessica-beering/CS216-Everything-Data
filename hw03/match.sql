SELECT A.id, B.id
FROM restaurants A, restaurants B
WHERE A.id < B.id AND ((A.addr =B.addr AND (lower(A.city) = lower(B.city) 
OR position(lower(A.city) in lower(B.city)) != 0 OR position(lower(B.city) in lower(A.city)) != 0) 
AND lower(A.type) = lower(B.type)) 
OR (position(A.name in B.name) !=0 OR position(B.name in A.name) !=0) 
AND similarity(lower(A.name), lower(B.name)) >=0.5);