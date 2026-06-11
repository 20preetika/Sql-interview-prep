-- Q: Unfinished Parts (Tesla) - Easy
-- Link: https://datalemur.com/questions/tesla-unfinished-parts

-- PATTERN: NULL handling in WHERE

-- NOTES:
-- finish_date IS NULL means the part is still in progress
-- Simple filter query, no aggregation needed

-- SOLUTION:
SELECT part, assembly_step
FROM parts_assembly
WHERE finish_date IS NULL;