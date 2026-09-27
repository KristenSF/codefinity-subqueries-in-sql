SELECT *
FROM books boo
    WHERE boo.book_id IN (
    SELECT DISTINCT bor.book_id
    FROM borrowings bor
    WHERE bor.borrow_date >= DATE '2023-07-01'
    );
