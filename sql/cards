-- Purpose: Build Dataset for Disciplinary Analysis
-- Source: FBref team tables (uploaded to BigQuery as CSV)

SELECT
  League, Squad, LeaguePosition,
  ROUND(CrdY / MP, 2) AS yellow_cards_90,
  ROUND(CrdR / MP, 2) AS red_cards_90,
  ROUND(Offside / MP, 2) AS offside_per_90
FROM `football-half-season-analysis.top_5_football.master`
ORDER BY yellow_cards_90 DESC;
