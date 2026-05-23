WITH sales AS (

    SELECT
        sales_id,
        gross_amount,
        payment_method,
        product_sk,
        customer_sk,
        {{multiply("unit_price","quantity")}} AS net_amount
    FROM
        {{ ref("bronze_sales")}}
),
products AS (
    SELECT 
        product_sk,
        category
    FROM
        {{ ref("bronze_product")}}
),
customer AS(
    SELECT 
        customer_sk,
        gender
    FROM
        {{ ref("bronze_customer")}}

)
SELECT
    sales.sales_id,
    sales.gross_amount,
    sales.payment_method,
    sales.net_amount,
    products.category,
    customer.gender
FROM
    sales
JOIN
    products ON sales.product_sk = products.product_sk
JOIN
    customer ON sales.customer_sk = customer.customer_sk