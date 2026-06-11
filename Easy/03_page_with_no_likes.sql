-- Q: Page With No Likes (Facebook) - Easy
-- Link: https://datalemur.com/questions/sql-page-with-no-likes

-- PATTERN: LEFT JOIN + IS NULL (no match pattern)

-- NOTES:
-- LEFT JOIN keeps all pages even if no likes exist
-- WHERE liked_date IS NULL filters pages with zero likes
-- This is the standard "find X with no Y" pattern

-- SOLUTION:
SELECT p.page_id
FROM pages AS p
LEFT JOIN page_likes AS pl ON p.page_id = pl.page_id
WHERE pl.liked_date IS NULL
ORDER BY p.page_id;