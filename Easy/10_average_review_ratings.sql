-- Q: Average Review Ratings (Amazon) - Easy
-- Link: https://datalemur.com/questions/sql-avg-review-ratings

-- PATTERN: Aggregation + GROUP BY + EXTRACT + ROUND + ORDER BY

-- NOTES:
-- EXTRACT(MONTH) pulls month as integer from timestamp
-- ROUND(AVG(), 2) rounds to 2 decimal places
-- GROUP BY both month and product_id for correct aggregation
-- ORDER BY month first then product_id as required

-- SOLUTION:
SELECT 
  EXTRACT(MONTH FROM submit_date) AS mth,
  product_id AS product,
  ROUND(AVG(stars), 2) AS avg_stars
FROM reviews
GROUP BY mth, product_id
ORDER BY mth, product_id;