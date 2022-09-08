
{% macro smaz_snapshot(tablename) %}
drop table mwcxbxsr.snapshots.{{tablename}};
{% endmacro %}

