{{ config(materialized='table') }}

select

    annee,

    extract(month from date_mutation) as mois,

    avg(prix_m2) as prix_m2_moyen

from {{ ref('fct_transactions') }}

group by

annee,

extract(month from date_mutation)