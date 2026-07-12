{{ config(materialized='view') }}

SELECT

    *,

    CASE

        WHEN type_local = 'Maison'
            THEN 'Maison'

        WHEN type_local = 'Appartement'
            THEN 'Appartement'

        WHEN type_local = 'Dépendance'
            THEN 'Dépendance'

        WHEN type_local = 'Local industriel. commercial ou assimilé'
            THEN 'Local professionnel'

        ELSE 'Autre'

    END AS type_local_normalise

FROM {{ ref('stg_dvf') }}