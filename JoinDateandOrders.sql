SELECT
    user_id as buyer_id,
    join_date,
    IFNULL(orders_in_2019, 0) as orders_in_2019
FROM Users as u LEFT JOIN 
    (SELECT
        o.buyer_id,
        COUNT(o.order_id) as orders_in_2019
    FROM Orders as o JOIN Users as u
    ON o.buyer_id = u.user_id
    WHERE YEAR(order_date) = '2019'
    GROUP BY 1) x
ON u.user_id = x.buyer_id
ORDER by 1