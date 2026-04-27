{% macro ethereum_conversion(column_name) %}
SUM( {{column_name}} / 1e18 )
{% endmacro %}

{% macro stablecoin_conversion(column_name) %}
SUM( {{column_name}} / 1e6 )
{% endmacro %}

{% macro conversion(column_name, factor) %}
SUM( {{column_name}} / POWER(10, {{ factor }}) )
{% endmacro %}