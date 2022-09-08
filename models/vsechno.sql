
{{ config(materialized='view') }}

select 
cast(md5(concat (hospoda,mesto)) as text) as ukey,
*
 from {{ ref('scd') }} 
 where aktualizace > '2022-02-01'
-- where aktualizace < '2022-02-01'
-- where aktualizace < '2021-01-01'