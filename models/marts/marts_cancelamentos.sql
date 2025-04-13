WITH source AS (
    SELECT * FROM {{ ref('int_estorno') }}
)

SELECT * FROM source
