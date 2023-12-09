{%- macro trino__quote_string(str) %}
  '{{ str | replace("'", "''")}}'
{% endmacro %}

{%- macro trino__quote_new_line() %}'\n'{% endmacro %}

