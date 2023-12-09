{% macro trino__get_column_type(column) %}
    
    {% if column.data_type in [
        'character varying',
        'varchar',
        'character',
        'char',
        'text'
    ] %}
        {{ return('varchar') }}

    {% elif column.data_type in [
            'smallint',
            'integer',
            'bigint',
            'decimal',
            'numeric',
            'real',
            'double precision',
            'enum',
        ] %}
        {{ return('integer') }}

    {% else %}
        {{ return('unknown') }}

    {% endif %}

{% endmacro %}
