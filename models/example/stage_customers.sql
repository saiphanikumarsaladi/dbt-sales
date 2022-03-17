with CUSTOMERS as (

   SELECT 
     CUSTOMER_ID,
     CUST_NAME,
     CITY,
     SALES_AGENT_ID
   FROM CUSTOMER
   
)
select * from CUSTOMERS