with
    source_data as (
        select *
    from {{ source('big_dataset_aw', 'sales_creditcard') }}

    )
select * from source_data