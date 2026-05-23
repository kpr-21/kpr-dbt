{{config(
    materialized='table'
)}}

select *
    from
    {{source('source', 'dim_product')}}
    {# dbt_dev.source.dim_product #}
