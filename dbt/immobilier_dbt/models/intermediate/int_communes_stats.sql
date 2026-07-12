{{ config(materialized='view') }}

select

    code_commune,
    nom_commune,

    count(*) as nb_transactions,

    avg(valeur_fonciere) as prix_moyen,

    percentile_cont(0.5)
        within group (order by valeur_fonciere)
        as prix_median

from {{ ref('stg_dvf') }}

group by

code_commune,
nom_commune