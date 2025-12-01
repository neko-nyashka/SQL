WITH last_rate_to_usd AS (
    SELECT DISTINCT ON (id)
        id,  name, rate_to_usd, updated
    FROM currency
    ORDER BY id, updated DESC
)

SELECT
    COALESCE("user".name, 'not defined') AS name,
    COALESCE("user".lastname, 'not defined') as lastname,
    balance.type AS type,
    SUM(balance.money) AS volume,
    COALESCE(last_rate_to_usd.name, 'not defined') AS currency_name,
    COALESCE(last_rate_to_usd.rate_to_usd, 1) AS last_rate_to_usd,
    SUM(balance.money) * COALESCE(last_rate_to_usd.rate_to_usd, 1) AS total_volume_in_usd
FROM balance
FULL JOIN "user" ON balance.user_id = "user".id
FULL JOIN last_rate_to_usd ON last_rate_to_usd.id = balance.currency_id
GROUP BY "user".name,
         "user".lastname,
         balance.type,
         last_rate_to_usd.name,
         last_rate_to_usd.rate_to_usd
ORDER BY
    name DESC,
    lastname,
    type;