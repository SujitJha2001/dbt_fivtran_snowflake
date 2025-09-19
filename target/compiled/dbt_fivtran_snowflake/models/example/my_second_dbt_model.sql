-- Use the `ref` function to select from other models

select *
from FIVETRAN_DATABASE.PUBLIC.my_first_dbt_model
where id = 1