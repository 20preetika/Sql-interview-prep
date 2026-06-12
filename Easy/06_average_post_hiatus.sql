-- Q: Average Post Hiatus Part 1 (Facebook) - Easy
-- Link: https://datalemur.com/questions/sql-average-post-hiatus-1
-- PATTERN: Aggregation + GROUP BY + HAVING + Date diff

-- NOTES:
-- DATE_PART('day', ...) extracts integer days from interval
-- MAX - MIN gives the interval between first and last post
-- HAVING COUNT >= 2 filters users who posted at least twice
-- EXTRACT(YEAR) filters to 2021 only

-- SOLUTION:
SELECT user_id, DATE_PART('day', MAX(post_date) - MIN(post_date)) AS days_between
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(post_id) >= 2;