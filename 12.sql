-- Analyze the cumulative revenue generated over time.

SELECT date, SUM(revenue) OVER(ORDER BY date) AS Cumilative_revenue
FROM
(SELECT orders.date,
SUM(order_details.quantity * pizzas.price) revenue
FROM order_details JOIN pizzas
ON order_details.pizza_id = pizzas.pizza_id
JOIN orders
ON orders.order_id = order_details.order_id
GROUP BY orders.date) Sales;