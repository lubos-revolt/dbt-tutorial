{% snapshot piva_snapshot %}

{{
    config(
      target_schema='snapshots',
      unique_key="hospoda||'-'||mesto",
      strategy='timestamp',
      updated_at='aktualizace',
    )
}}

select * from {{ ref('vsechno') }}

{% endsnapshot %}