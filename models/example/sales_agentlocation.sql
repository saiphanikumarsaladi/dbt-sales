select SALES_AGENT_ID,
       NAME,
       CITY,
       SALEC_COMMISION_PCT
       from {{ ref('stage_agent') }}
       where CITY = 'Scranton'