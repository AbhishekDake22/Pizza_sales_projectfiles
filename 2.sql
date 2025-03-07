-- 2. Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(multiplied), 2) AS Total_Revenue
FROM
    (SELECT 
        order_details.quantity * pizzas.price AS multiplied
    FROM
        order_details
    JOIN pizzas ON pizzas.pizza_id = order_details.pizza_id) t;
 
