{% macro td__current_timestamp_in_utc() %}
  at_timezone(current_timestamp,'UTC')
{% endmacro %}

{% macro td__current_timestamp_backcompat() %}
  at_timezone(current_timestamp,'UTC')
{% endmacro %}
