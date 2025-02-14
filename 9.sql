-- Group the orders by date and calculate the average number of pizzas ordered per day.

SELECT 
    ROUND(AVG(sumqty), 0) AS Average_pday
FROM
    (SELECT 
        orders.date, SUM(order_details.quantity) sumqty
    FROM
        orders
    JOIN order_details ON orders.order_id = order_details.order_id
    GROUP BY date) t;