with
    source_data as (
        select *
    from {{ source('big_dataset_aw', 'person_stateprovince') }}

    )
select * from source_data