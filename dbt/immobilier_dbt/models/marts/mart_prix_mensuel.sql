{{ config(materialized='table') }}

SELECT

    date_trunc('month',date_mutation) AS mois,

    COUNT(*)                          AS nb_transactions,

    ROUND(AVG(prix_m2),0)             AS prix_m2_moyen

FROM {{ ref('fct_transactions') }}

GROUP BY 1

ORDER BY 1