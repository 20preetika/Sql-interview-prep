-- Q: Laptop vs Mobile Viewership (NY Times) - Easy
-- Link: https://datalemur.com/questions/laptop-mobile-viewership

-- PATTERN: CASE WHEN + SUM (conditional counting)

-- NOTES:
-- SUM(CASE WHEN condition THEN 1 ELSE 0 END) = conditional count
-- No GROUP BY needed here since we want totals across all rows
-- tablet and phone both count as mobile

-- SOLUTION:
SELECT 
  SUM(CASE WHEN device_type = 'laptop' THEN 1 ELSE 0 END) AS laptop_views,
  SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN 1 ELSE 0 END) AS mobile_views
FROM viewership;