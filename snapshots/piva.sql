{% snapshot piva_snapshot %}

{{
    config(
      target_schema='dbt_lubos',
       unique_key='ukey',
       strategy='timestamp',
       updated_at='aktualizace'
    )
}}

select * from {{ ref('vsechno') }}

{% endsnapshot %}