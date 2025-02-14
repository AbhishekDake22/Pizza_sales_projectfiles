-- Determine the distribution of orders by hour of the day.

SELECT 
    HOUR(time) Hour_of_the_day, COUNT(order_id) Order_qty
FROM
    orders
GROUP BY Hour_of_the_day;