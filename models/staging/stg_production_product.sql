with
    source_data as (
        select *
    from {{ source('big_dataset_aw', 'production_product') }}

    )
select * from source_data