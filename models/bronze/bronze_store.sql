select *
    from
    {{source('source', 'dim_store')}}
    {# dbt_dev.source.dim_store #}
