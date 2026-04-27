SELECT 
t.date,
t.token_address,
s.type,
s.symbol,
{{ conversion('t.value', 's.decimals') }} AS total_usd_value
FROM {{ ref('stg_token_transfers') }} AS t
LEFT JOIN {{ ref('stablecoins') }} AS s
    ON t.token_address = s.contract_address
WHERE s.contract_address IS NOT NULL
--WHERE LOWER(token_address) IN ('0xdac17f958d2ee523a2206206994597c13d831ec7', '0xa0b86991c6218b36c1d19d4a2e9eb0ce3606eb48')
--OR LOWER(token_address) IN {{ log_token_list() }}
GROUP BY 1, 2, 3, 4