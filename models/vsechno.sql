
select * from {{ ref('scd') }} 
where aktualizace < '2021-01-01'