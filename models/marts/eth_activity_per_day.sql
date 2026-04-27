SELECT
date,
transaction_category,
COUNT(*) AS tx_count,
{{ conversion('value', '18') }} AS sum_eth_value
FROM {{ ref('int_transactions_enriched') }}
GROUP BY 1, 2