{{ config(materialized='table') }}

SELECT

    transaction_id,

    id_mutation,

    annee,

    date_mutation,

    code_commune,

    nom_commune,

    code_departement,

    type_local_normalise,

    valeur_fonciere,

    prix_m2,

    surface_reelle_bati,

    surface_terrain,

    nombre_pieces_principales,

    latitude,

    longitude

FROM {{ ref('int_dates') }}