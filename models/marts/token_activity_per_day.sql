{{ config(tags=['token'], alias=var('token_name_var')~'_activity_per_day') }}

SELECT 
date,
token_address,
{{ conversion('value', var('token_decimals_var')) }} AS total_value
FROM {{ ref('stg_token_transfers') }}
WHERE LOWER(token_address) = '{{ var("token_address_var") }}'
GROUP BY 1, 2