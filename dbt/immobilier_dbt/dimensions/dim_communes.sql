{{ config(materialized='table') }}

SELECT DISTINCT

    code_commune,

    nom_commune,

    code_postal,

    code_departement

FROM {{ ref('stg_dvf') }}