SELECT
hash,
block_number,
date,
from_address,
to_address,
value,
receipt_contract_address,
input
FROM {{ source('eth','transactions') }}

{% if is_incremental() %}
  WHERE date >= (SELECT MAX(date) FROM {{this}})
{% endif %}