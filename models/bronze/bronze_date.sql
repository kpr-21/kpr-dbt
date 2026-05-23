select *
    from
    {{source('source', 'dim_date')}}
    {# dbt_dev.source.dim_date #}
