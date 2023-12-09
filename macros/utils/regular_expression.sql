{% macro trino__regex_match_expression(column_name, pattern) %}
    regexp_like({{column_name}}, '{{pattern}}')
{% endmacro %}
