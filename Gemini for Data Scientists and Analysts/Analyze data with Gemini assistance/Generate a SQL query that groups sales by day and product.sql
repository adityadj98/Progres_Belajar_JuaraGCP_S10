# select the sum of sale_price by Date(created_at) and product_id casted to day from bigquery-public-data.thelook_ecommerce.order_id as t1 joined this with products table in the same dataset as t2
SELECT
  SUM(sale_price),
  DATE(created_at) AS created_at_day,
  CAST(product_id as INT64)
FROM
  `bigquery-public-data.thelook_ecommerce.order_items` AS t1
JOIN
  `bigquery-public-data.thelook_ecommerce.products` AS t2 ON t1.product_id = t2.id
GROUP BY
  created_at_day,
  product_id