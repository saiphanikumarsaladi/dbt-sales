with SALES_AGENTS as (

    SELECT *
    FROM {{ ref('stage_agent') }}
    
),

CUSTOMERS as (

   SELECT * FROM {{ ref('stage_customers') }}
   
),

orderSS as (
        select *
        from {{ ref('stage_orders') }}
),

final as (
      select 
         SALES_AGENT.SALES_AGENT_ID,
         SALES_AGENT.NAME,
         CUSTOMERS.CUSTOMER_ID,
         CUSTOMERS.CUST_NAME,
         ordersS.ORDER_NUM,
         ordersS.PURCHASE_AMT from SALES_AGENT
         LEFT JOIN CUSTOMERS USING (SALES_AGENT_ID)
         LEFT JOIN ORDERSS USING (SALES_AGENT_ID)
)
SELECT * FROM final