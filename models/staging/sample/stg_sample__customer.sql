{{ config(schema='harsha') }}


with 

source as (

    select * from {{ source('sample', 'customer') }}

),

renamed as (

    select
        c_custkey as Customer_ID,
        c_name as n_ame,
        c_address,
        c_nationkey,
        c_phone,
        c_acctbal,
        c_mktsegment,
        c_comment

    from source

)

select * from renamed