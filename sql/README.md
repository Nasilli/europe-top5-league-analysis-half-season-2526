
This folder contains the SQL used to construct league-level datasets
and metrics for the Tableau dashboards.

### Data Preparation & Environment

Raw team-level data was sourced from FBref and downloaded as CSV files on a league-by-league basis (Premier League, La Liga, Bundesliga, Serie A, Ligue 1).

Prior to ingestion into BigQuery, each CSV was first cleaned in Google Sheets. This preprocessing step involved removing unused tables and columns, standardising column names, and retaining only the metrics required for cross-league comparison (e.g. possession, progressive passes, progressive carries, xG, goals, tackles, interceptions, and disciplinary data). This ensured a consistent schema across leagues and reduced unnecessary data volume.

Once cleaned, the league-level CSVs were uploaded to BigQuery, where SQL was used to:
- join individual league tables into a unified master dataset,
- create derived metrics and per-90 normalisations,
- aggregate team-level data to league-level averages,
- and generate filtered datasets (e.g. top 5, bottom 5 teams) used directly in Tableau visualisations.

All analysis and visualisation datasets shown in the Tableau Story were produced from these SQL queries.

## Structure
- `build_master_table.sql`  
  Builds the master table by joining FBref team-level datasets.

- `chance_creation.sql`  
  Shot-creating actions and progressive passing metrics.

- `creative_efficiency.sql`  
  Progressive passes vs shot-creating actions.

- `dribbling_progression.sql`  
  Share of progression through ball carrying.

- `possession_progression.sql`  
  Possession vs total progression analysis.

- `defensive_profiles.sql`  
  Tackles vs interceptions (reactive vs anticipatory defending).

- `cards.sql`  
  Yellow and red cards per 90.

## Environment
- SQL dialect: **BigQuery**
- Source data: FBref CSVs, cleaned in Google Sheets, uploaded to BigQuery for joining.
  
- Note: Raw FBref CSVs are not included in this repository due to size and licensing considerations.
