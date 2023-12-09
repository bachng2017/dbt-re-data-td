--percentile calculation specific to Trino
{% macro td__percentile(percentile_field, partition_field, percent)  %}
    approx_percentile(
        {{ percentile_field }},
        {{ percent }})
        over (partition by {{ partition_field }}
        )

{% endmacro %}

