SELECT Orders1.order_id,Customer.first_name,Customer.age
FROM Orders1
INNER JOIN Customer
ON Customer.customer_id=Orders1.order_id; Output
order_id    first_name    age
1             Indrani    24
2             John            31 SELECT Orders1.order_id,Customer.customer_id
FROM Customer
LEFT JOIN Orders1
ON Customer.customer_id=Orders1.order_id; Output
order_id    customer_id
1             1
2             2
                 3
                 5
SELECT Orders1.order_id,Customer.first_name,Orders1.amount
FROM Customer
RIGHT JOIN Orders1
ON Customer.customer_id=Orders1.order_id; SELECT Orders1.order_id,Customer.first_name,Customer.customer_id
FROM Customer
FULL JOIN Orders1
ON Customer.customer_id=Orders1.order_id;