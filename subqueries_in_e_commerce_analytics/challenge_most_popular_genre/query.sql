SELECT genre, borrow_count
FROM 
    (SELECT b.genre, COUNT (*) AS borrow_count
    FROM borrowings br
    JOIN books b ON br.book_id = b.book_id
    GROUP BY b.genre) AS genre_counts
     WHERE borrow_count = (SELECT MAX (borrow_count) 
 FROM (SELECT b.genre, COUNT (*) AS borrow_count
FROM borrowings br
JOIN books b ON br.book_id = b.book_id
GROUP BY b.genre) AS max_counts);