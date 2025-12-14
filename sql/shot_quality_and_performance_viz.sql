-- Purpose: Build Dataset for Shot Quality & Performance Visualisations
-- Source: FBref team tables (uploaded to BigQuery as CSV)
-- Grain: team-season (half-season snapshot)
-- Output table: dataset.master_team_metrics

SELECT
  League,Squad, LeaguePosition,
  ROUND(Goals/MP,2) AS goals_90,
  ROUND(npxG/MP,2)    AS npxg_90,
  ROUND(Shots/MP,2) AS shots_90,
  ROUND(SoT/MP,2)   AS sot_90,
  ROUND(`G-xG`,2) AS finishing_quality,
  ROUND(npxG_Sh,4) AS npxg_per_shot
FROM `football-half-season-analysis.top_5_football.master`
ORDER BY npxg_90 DESC;
