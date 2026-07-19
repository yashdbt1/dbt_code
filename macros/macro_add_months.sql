{% macro add_months(column) %}

ADD_MONTHS({{ column }}, 12)

{% endmacro %}