{{ config(materialized='view') }}

SELECT

    *,

    EXTRACT(YEAR FROM date_mutation)      AS annee_transaction,

    EXTRACT(MONTH FROM date_mutation)     AS mois_transaction,

    EXTRACT(QUARTER FROM date_mutation)   AS trimestre,

    EXTRACT(DAY FROM date_mutation)       AS jour,

    TO_CHAR(date_mutation,'Month')        AS nom_mois,

    TO_CHAR(date_mutation,'Day')          AS jour_semaine

FROM {{ ref('int_prix_m2') }}