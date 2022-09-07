{% snapshot piva_snapshot %}

{{
    config(
      target_schema='snapshots3',
       unique_key='ukey',
       strategy='timestamp',
       updated_at='aktualizace'
    )
}}

select * from {{ ref('vsechno') }}

{% endsnapshot %}