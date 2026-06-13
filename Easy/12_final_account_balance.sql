-- Q: Final Account Balance (PayPal) - Easy
-- Link: https://datalemur.com/questions/final-account-balance
-- PATTERN: CASE WHEN + SUM + GROUP BY

-- NOTES:
-- Use CASE WHEN to add deposits and subtract withdrawals
-- SUM with conditional CASE handles both in one pass
-- GROUP BY account_id gives balance per account

-- SOLUTION:
SELECT account_id,
  SUM(CASE WHEN transaction_type = 'Deposit' THEN amount
      ELSE -amount END) AS final_balance
FROM transactions
GROUP BY account_id;