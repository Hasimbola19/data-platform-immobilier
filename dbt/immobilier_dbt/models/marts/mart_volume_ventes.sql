{{ config(materialized='table') }}

select

    annee,

    nom_commune,

    count(*) as nb_ventes

from {{ ref('fct_transactions') }}

group by

annee,

nom_commune