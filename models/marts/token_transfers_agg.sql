{{ config(materialized='ephemeral') }}

SELECT
transaction_hash,
COUNT(*) AS token_transfer_count
FROM {{ ref('stg_token_transfers') }}
GROUP BY 1