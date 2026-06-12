-- Q: Cities With Completed Trades (Robinhood) - Easy
-- Link: https://datalemur.com/questions/completed-trades

-- PATTERN: JOIN + WHERE + GROUP BY + ORDER BY + LIMIT

-- NOTES:
-- INNER JOIN connects trades to users to get city info
-- WHERE filters only completed trades
-- GROUP BY city then COUNT gives trades per city
-- ORDER BY DESC + LIMIT 3 gives top 3 cities

-- SOLUTION:
SELECT u.city, COUNT(*) AS total_orders
FROM trades t
JOIN users u ON t.user_id = u.user_id
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;