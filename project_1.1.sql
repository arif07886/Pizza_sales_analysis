-- calculate the total revenue gernerate from pizza sales
-- join ( means inner join)

SELECT 
    SUM(orders_details.quantity * pizzas.price) AS total_revenue
FROM
    orders_details
        JOIN
    pizzas ON orders_details.pizza_id = pizzas.pizza_id;