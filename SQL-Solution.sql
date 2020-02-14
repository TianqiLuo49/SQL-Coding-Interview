
/* Interview Question SQL Solution */
/* Tianqi Luo */


 /* Select the relevant columns, calculate the sums of the sold copies */
SELECT authors.author_name, authors.book_name, SUM(books.sold_copies) AS total_copies               
FROM authors

/* Left join the books dataset with the authors daaset by the book name*/
LEFT JOIN books on authors.book_name = books.book_name

/* Group by the authors */
GROUP BY authors.author_name    

/* Arrange the column by the total number of sold copies in descending order */
ORDER BY total_copies DESC

/* Select the top 3 authors */
LIMIT 3