
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='view') }}

with source_data as (

    select 1111 as id
    union all
        select 2222 as id
union all
 select 3333 as id
 union
    select null as id

)

select *
from source_data


