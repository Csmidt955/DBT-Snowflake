select order_id,
       sum(amount) as total_value
from {{ ref('stg_payments') }}

group by 1
having total_value < 0
