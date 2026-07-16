{{ config(materialized='view') }}

SELECT

	*,

	COALESCE(surface_reelle_bati, 0) AS surface_reelle_bati_clean

FROM {{ ref('stg_dvf') }}