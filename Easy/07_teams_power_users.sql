-- Q: Teams Power Users (Microsoft) - Easy
-- Link: https://datalemur.com/questions/teams-power-users

-- PATTERN: Aggregation + GROUP BY + ORDER BY + LIMIT (Top N)

-- NOTES:
-- EXTRACT year and month together to filter August 2022
-- COUNT(*) counts all messages sent by each sender
-- ORDER BY DESC + LIMIT 2 gives top 2 senders

-- SOLUTION:
SELECT sender_id, COUNT(*) AS message_count 
FROM messages
WHERE EXTRACT(YEAR FROM sent_date) = 2022
AND EXTRACT(MONTH FROM sent_date) = 8
GROUP BY sender_id
ORDER BY message_count DESC 
LIMIT 2;