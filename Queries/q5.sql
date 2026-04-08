SELECT nurse_id, COUNT(order_id) as orders_executed
FROM execute_order
GROUP BY nurse_id;