-- Q: Histogram of Tweets (Twitter) - Easy
-- Link: https://datalemur.com/questions/histogram-tweets

-- PATTERN: CTE + two-level aggregation

-- NOTES:
-- First CTE counts tweets per user for 2022
-- Outer query groups by that count to build histogram
-- tweet_bucket = number of tweets a user posted

-- SOLUTION:
WITH t AS (
  SELECT user_id, COUNT(*) AS tweet_bucket
  FROM tweets
  WHERE tweet_date >= '2022-01-01' AND tweet_date < '2023-01-01'
  GROUP BY user_id
)
SELECT tweet_bucket, COUNT(user_id) AS users_num
FROM t
GROUP BY tweet_bucket
ORDER BY tweet_bucket;