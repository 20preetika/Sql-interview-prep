-- Q: Duplicate Job Listings (LinkedIn) - Easy
-- Link: https://datalemur.com/questions/duplicate-job-listings
-- PATTERN: CTE + GROUP BY + HAVING (find duplicates)

-- NOTES:
-- Group by company_id + title + description to find identical listings
-- HAVING COUNT > 1 identifies duplicates
-- Outer query counts how many companies have duplicates
-- CTE needed because two levels of aggregation required

-- SOLUTION:
WITH duplicates AS (
  SELECT company_id
  FROM job_listings
  GROUP BY company_id, title, description
  HAVING COUNT(*) > 1
)
SELECT COUNT(company_id) AS duplicate_companies
FROM duplicates;