with
    source_data as (
        select *
    from {{ source('big_dataset_aw', 'sales_salesorderheadersalesreason') }}

    )
select * from source_data