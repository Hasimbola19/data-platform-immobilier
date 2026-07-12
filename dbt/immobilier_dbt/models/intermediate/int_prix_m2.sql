{{ config(materialized='view') }}

SELECT

    *,

    CASE

        WHEN surface_reelle_bati IS NOT NULL
         AND surface_reelle_bati > 0

        THEN ROUND(valeur_fonciere / surface_reelle_bati,2)

    END AS prix_m2

FROM {{ ref('int_type_local') }}