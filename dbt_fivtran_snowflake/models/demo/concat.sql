with concat_data as (
    select * from {{ source('fivetran', 'GOOGLE_SHEETS_DEMO_DB') }}
),
final as (
    select SIGNUP_DATE, GENDER, PHONE, LOYALTY_TIER, CUSTOMER_SK, CUSTOMER_CODE, CONCAT(FIRST_NAME,' ',LAST_NAME) AS FULL_NAME, EMAIL from concat_data
)
select * from final