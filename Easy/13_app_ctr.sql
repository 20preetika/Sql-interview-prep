-- Q: App Click-through Rate CTR (Facebook) - Easy
-- Link: https://datalemur.com/questions/click-through-rate

-- PATTERN: CASE WHEN + SUM + GROUP BY + ROUND (ratio/percentage)

-- NOTES:
-- Multiply by 100.0 not 100 to avoid integer division
-- SUM(CASE WHEN) counts clicks and impressions in one pass
-- ROUND to 2 decimal places as required
-- Filter to 2022 only using EXTRACT

-- SOLUTION:
SELECT app_id,
  ROUND(100.0 * 
    SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) /
    SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END), 2) AS ctr
FROM events
WHERE EXTRACT(YEAR FROM timestamp) = 2022
GROUP BY app_id;