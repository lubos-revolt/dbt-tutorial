
{{ config(materialized='view') }}

select 
cast(md5(concat (hospoda,mesto)) as text) as ukey,
cast(hospoda as text),
cast(mesto as text),
cast(pivo as text),
cast(cena as int),
cast(aktualizace as timestamp)
 from {{ ref('scd') }} 
where aktualizace < '2022-02-01'
-- where aktualizace < '2021-01-01'