{{ config(materialized='table') }}

SELECT

    ROW_NUMBER() OVER (ORDER BY type_local_normalise) AS type_local_id,

    type_local_normalise

FROM (

    SELECT DISTINCT type_local_normalise

    FROM {{ ref('int_type_local') }}

) t