{{ config(materialized='table') }}

SELECT

    nom_commune,

    COUNT(*)                    AS nb_transactions,

    ROUND(AVG(prix_m2),0)       AS prix_m2_moyen,

    ROUND(AVG(valeur_fonciere),0) AS prix_moyen

FROM {{ ref('fct_transactions') }}

GROUP BY nom_commune