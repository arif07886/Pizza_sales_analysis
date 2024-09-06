-- Identify the most commen pizza size ordered 

SELECT 
    pizzas.size, COUNT(orders_details.order_id) AS order_count
FROM
    pizzas
        JOIN
    orders_details ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizzas.size
ORDER BY order_count DESC;