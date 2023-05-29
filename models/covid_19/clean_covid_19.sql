{{ config(materialized='table') }}

select "Province/State" as state,
       "Country/Region" as country,
       "Lat" as latitude,
       "Long" as longitude,
       "Date" as date,
       "Deaths" as deaths,
       "Recovered" as recovered,
       "Active" as active,
       "WHO Region" as who_region
from {{ ref('covid_19') }}