-- select * from {{ ref('scd') }} 

-- drop table "mwcxbxsr"."snapshots"."piva_snapshot";

--incremental
-- select * from {{ref('hratky')}}

--snapshots
-- select * from {{ ref('minitest1_snapshot') }}
 select * from {{ ref('piva_snapshot') }}


{# -- {{ run-operation() }} #}
