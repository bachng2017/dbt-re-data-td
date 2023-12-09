{% macro trino__freshness_expression(time_filter) %}
   DATE_DIFF('second', cast(max({{ time_filter }}) as timestamp), cast({{ time_window_end() }} as timestamp))
{% endmacro %}
