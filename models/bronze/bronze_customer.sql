select *
    from
    {{source('source', 'dim_customer')}}
    {# dbt_dev.source.dim_customer #}
