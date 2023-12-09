{% macro trino__try_cast(field, type) %}
    fivetran_utils.safe_cast({{field}} as {{type}})
{% endmacro %}
