-- Purpose: Build Dataset for Possession vs Progression
-- Source: FBref team tables (uploaded to BigQuery as CSV)

SELECT
  League,
  Squad,
  Poss,
  ROUND(Prg_P/MP,3) as prg_P_90,
  ROUND(Prg_Carries/MP,3) as prg_C_90,
  ROUND((Prg_P/MP)+(Prg_Carries/MP),3) AS total_prg_90
FROM `football-half-season-analysis.top_5_football.master`;
