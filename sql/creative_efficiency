-- Purpose: Build Dataset for Creativity & Chance Creation Visualisation
-- Source: FBref team tables (uploaded to BigQuery as CSV)

SELECT
  League, Squad, LeaguePosition,
  ROUND(SCA90, 2)AS sca90,
  ROUND(GCA90,2) AS gca90,
  ROUND(Prg_P/MP,2) AS prog_p_90,
  ROUND(Key_P/MP,1) AS key_passes_90,
  ROUND(Prg_P/MP,2) AS prg_passes_90
FROM `football-half-season-analysis.top_5_football.master`
ORDER BY sca90 DESC;
