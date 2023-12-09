{% macro trino__anamaly_detection_time_window_start() %}
    cast({{ time_window_start() }} as timestamp) - interval '{{var('re_data:anomaly_detection_look_back_days')}}' day
{% endmacro %}

{% macro trino__interval_length_sec(start_timestamp, end_timestamp) %}
   date_diff('second', cast({{ start_timestamp }} as timestamp), cast({{ end_timestamp }} as timestamp))
{% endmacro %}

{% macro trino__in_time_window(time_column) %}
    cast({{time_column}} as timestamp) >= cast({{ time_window_start() }} as timestamp) and
    cast({{time_column}} as timestamp) < cast({{ time_window_end() }} as timestamp)
{% endmacro %}

{% macro trino__format_timestamp(column_name) %}
    FORMAT_DATETIME({{column_name}}, 'YYYY-MM-dd HH:mm:ss')
{% endmacro %}

{% macro trino__in_date_window(target, start_date, end_date) %}
  {%- set target_by_date = 'date(cast (' ~ target ~ ' as timestamp))' -%}
  {% if start_date is not none and end_date is not none %}
    {{target_by_date}} between date '{{start_date}}' and date '{{end_date}}'
  {% elif start_date is none %}
    {{target_by_date}} <=  date '{{end_date}}'
  {% elif end_date is none %}
    {{target_by_date}} >= date '{{start_date}}'
  {% endif %}
{% endmacro %}

