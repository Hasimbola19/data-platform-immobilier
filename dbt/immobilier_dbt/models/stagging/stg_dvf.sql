{{ config(materialized='view') }}

SELECT

    _id                    AS transaction_id,
    id_mutation,
    annee,

    CAST(date_mutation AS DATE)          AS date_mutation,

    nom_commune,
    code_commune,
    code_departement,
    code_postal,

    adresse_numero,
    adresse_nom_voie,

    type_local,
    code_type_local,

    valeur_fonciere,

    surface_reelle_bati,

    surface_terrain,

    nombre_pieces_principales,

    latitude,
    longitude

FROM {{ source('cote_d_amor', 'DVF') }}