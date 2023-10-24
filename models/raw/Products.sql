{{
    config(
        materialized='table'
    )
}}

select * from {{ source('Gloablmart', 'Products') }}