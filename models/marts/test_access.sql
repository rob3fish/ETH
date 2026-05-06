{{ config(group = 'fraud_risk') }}

SELECT *
FROM {{ ref('confirmed_frauds')}}