{{ config(materialized='table') }}

SELECT "Province/State" AS state,
       "Country/Region" AS country,
       "Lat" AS latitude,
       "Long" AS longitude,
       "Date" AS date,
       "Deaths" AS deaths,
       "Recovered" AS recovered,
       "Active" AS active,
       "WHO Region" AS who_region
  FROM {{ ref('covid_19') }}