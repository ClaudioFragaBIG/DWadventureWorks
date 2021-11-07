{{ config(materialized='table') }}

with
    staging as (
        select *
        from {{ref('stg_person_countryregion')}}
    ) -- referenciando a country region
    , transformed as (
        select
            row_number() over (order by countryregioncode) as countryregioncode_sk -- auto-incremental surrogate key
      
        from staging
    )

    select * from transformed