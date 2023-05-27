SELECT temp_table.stock_name, SUM(temp_table.full_price) as capital_gain_loss
FROM (
  SELECT stock_name, operation,
  Case
    WHEN operation = "BUY" THEN -price
    WHEN operation = "SELL" THEN price
    ELSE 0
  END full_price
  FROM Stocks
) as temp_table
GROUP BY temp_table.stock_name