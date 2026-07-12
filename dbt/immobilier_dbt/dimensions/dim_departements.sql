{{ config(materialized='table') }}

SELECT DISTINCT

    code_departement,

    CASE

        WHEN code_departement='22'

        THEN 'Côtes-d''Armor'

        ELSE 'Autre'

    END AS departement

FROM {{ ref('stg_dvf') }}