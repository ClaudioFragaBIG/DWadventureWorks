with
    source_data as (
        select *
    from {{ source('big_dataset_aw', 'sales_salesorderheader') }}

    )
select * from source_data