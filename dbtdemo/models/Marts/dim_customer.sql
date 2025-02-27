WITH customer_source AS (
    SELECT
        C_CUSTKEY AS CustomerKey,
        C_NAME AS CustomerName,
        C_ADDRESS AS Address,
        C_NATIONKEY AS NationKey,
        C_PHONE AS Phone,
        C_ACCTBAL AS AccountBalance,
        C_MKTSEGMENT AS MarketSegment,
        C_COMMENT AS Comment
    FROM {{ source('DBT', 'CUSTOMER') }}
)
SELECT * FROM customer_source