{% macro trino__timestamp_type() %}
    varchar
{% endmacro %}

{% macro trino__string_type() %}
    varchar
{% endmacro %}

{% macro trino__numeric_type() %}
    double
{% endmacro %}

{% macro trino__boolean_type() %}
    varchar
{% endmacro %}
