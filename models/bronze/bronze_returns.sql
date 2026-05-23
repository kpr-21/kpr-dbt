{{config(
    materialized='view'
)}}

select *
    from
    {{source('source', 'fact_returns')}}
    {# dbt_dev.source.fact_returns #}
