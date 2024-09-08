SELECT u.id as user_id, u.first_name, u.last_name, avg(oi.sale_price) as avg_sale_price   
FROM `bigquery-public-data.thelook_ecommerce.users` as u   
JOIN `bigquery-public-data.thelook_ecommerce.order_items` as oi   
ON u.id = oi.user_id   
GROUP BY 1,2,3   
ORDER BY avg_sale_price DESC   
LIMIT 10