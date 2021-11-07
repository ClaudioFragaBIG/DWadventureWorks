with
    source_data as (
        select *
    from {{ source('big_dataset_aw', 'sales_salesreason') }}

    )
select * from source_data