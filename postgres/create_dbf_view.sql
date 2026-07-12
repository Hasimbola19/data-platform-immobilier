CREATE SCHEMA IF NOT EXISTS analytics;
CREATE OR REPLACE VIEW analytics.ventes AS
SELECT
    _id,
    annee,
    id_mutation,
    date_mutation,
    valeur_fonciere,
    nom_commune,
    code_commune,
    code_postal,
    adresse_numero,
    adresse_nom_voie,
    type_local,
    code_type_local,
    nombre_pieces_principales,
    surface_reelle_bati,
    surface_terrain,
    latitude,
    longitude,
    _geopoint
FROM cote_d_amor."DVF";