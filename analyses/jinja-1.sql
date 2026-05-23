{% set var_name = "Prudhvi reddy"%}

{{ var_name }}

{%- set apples = ["gala", "honeycrisp"] -%}

{% for i in apples%}
    {{ i}}
{% endfor %}