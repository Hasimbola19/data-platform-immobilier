{{ config(materialized='table') }}

SELECT

    type_local_normalise,

    COUNT(*) nb_transactions,

    ROUND(AVG(prix_m2),0) prix_m2

FROM {{ ref('fct_transactions') }}

GROUP BY type_local_normalise