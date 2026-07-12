{% macro clean_string(colonne) %}

trim(initcap({{ colonne }}))

{% endmacro %}