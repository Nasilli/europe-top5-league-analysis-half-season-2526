-- Purpose: Build Dataset for Defensive Profiles
-- Source: FBref team tables (uploaded to BigQuery as CSV)

SELECT
  League, Squad, LeaguePosition,
  ROUND(Tkl/MP,2)   AS tackles_90,
  ROUND(TklW/MP,2)  AS tackles_won_90,
  ROUND(Int/MP,1)   AS interceptions_90,
FROM `football-half-season-analysis.top_5_football.master`
ORDER BY tackles_90 DESC;
