SELECT *
FROM {{ ref('stablecoin_activity_per_day', v=2)}}
WHERE type='Fiat-backed'