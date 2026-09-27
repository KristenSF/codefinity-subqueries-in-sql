
SELECT
  m.member_id,
  m.name,
  mbc.borrow_count
FROM (
  SELECT
    member_id,
    COUNT(*) AS borrow_count
  FROM borrowings
  GROUP BY member_id
) AS mbc
JOIN members m
  ON mbc.member_id = m.member_id
ORDER BY
  mbc.borrow_count DESC,
  m.member_id ASC
LIMIT 2;