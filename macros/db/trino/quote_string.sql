{%- macro td__quote_string(str) %}
  '{{ str | replace("'", "''")}}'
{% endmacro %}

{%- macro td__quote_new_line() %}'\n'{% endmacro %}

