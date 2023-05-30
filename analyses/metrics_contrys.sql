SELECT state,
       country,
       SUM(deaths) AS total_deaths,
       SUM(recovered) AS total_recovered,
       SUM(active) AS total_actives
  FROM {{ ref('clean_covid_19') }}
 GROUP BY  state, country