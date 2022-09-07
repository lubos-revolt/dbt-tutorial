
{% snapshot minitest1_snapshot %}

{{
    config(
      target_schema='snapshots',
       unique_key='user_id',
       strategy='check',
        check_cols='all'    )
}}

-- select 1 as user_id, 'inactive' as status, 123 as price
-- union all
select 2 as user_id, 'inactive' as status, 123 as price
union all
select 2 as user_id, 'active' as status, 123 as price

{% endsnapshot %}



