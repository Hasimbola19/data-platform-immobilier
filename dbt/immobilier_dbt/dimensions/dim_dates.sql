{{ config(materialized='table') }}

SELECT DISTINCT

    date_mutation,

    EXTRACT(YEAR FROM date_mutation) AS annee,

    EXTRACT(MONTH FROM date_mutation) AS mois,

    EXTRACT(QUARTER FROM date_mutation) AS trimestre,

    EXTRACT(DAY FROM date_mutation) AS jour,

    TO_CHAR(date_mutation,'Month') AS mois_nom,

    TO_CHAR(date_mutation,'Day') AS jour_nom

FROM {{ ref('stg_dvf') }}