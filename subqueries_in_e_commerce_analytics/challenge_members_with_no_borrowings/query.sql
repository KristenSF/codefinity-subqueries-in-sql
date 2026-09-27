SELECT m.name
FROM members m
    WHERE m.member_id NOT IN (SELECT DISTINCT member_id 
    FROM borrowings);
