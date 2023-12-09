{% macro trino__to_2dp(val) %}
    format('%.2f', {{ val }})
{% endmacro %}
