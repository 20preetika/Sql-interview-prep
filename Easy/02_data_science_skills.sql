-- Q: Data Science Skills (LinkedIn) - Easy
-- Link: https://datalemur.com/questions/matching-skills

-- PATTERN: GROUP BY + HAVING + COUNT DISTINCT

-- NOTES:
-- Filter candidates who have all 3 required skills
-- HAVING COUNT(DISTINCT skill) = 3 ensures all 3 are present
-- ORDER BY at end is optional but clean

-- SOLUTION:
SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(DISTINCT skill) = 3
ORDER BY candidate_id;