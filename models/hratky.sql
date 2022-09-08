{{
    config(
        materialized='incremental',
        unique_key= ['hospoda', 'mesto'],
        on_schema_change='fail'
    )

}}

select * from {{ ref('scd') }} 
-- where aktualizace < '2021-01-01'
-- where aktualizace < '2022-02-01'
where aktualizace > '2022-02-01'