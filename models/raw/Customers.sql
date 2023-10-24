{{
    config(
        materialized='table'
    )
}}

select * from {{ source('Gloablmart', 'Customers') }}