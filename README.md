# europe-top5-league-analysis-half-season-2526
League-level tactical analysis of Europe’s top five football leagues using SQL and Tableau, based on half-season 2025/26 FBref data.

# European Football League Styles — Half-Season Analysis (2025/26)

Interactive Tableau Story: https://public.tableau.com/views/TacticalStylisticComparisonofEuropesTopFiveLeaguesHalf-Season2526/TacticalStylisticComparisonofEuropesTopFiveLeaguesHalf-Season2526?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Overview
This project compares tactical and stylistic tendencies across Europe’s top five domestic leagues:
**Premier League, La Liga, Bundesliga, Serie A, and Ligue 1** (first half of the 2025/26 season).

The analysis is conducted at **league level** by aggregating team metrics to league averages, allowing a clear comparison of how leagues differ in:
- Attacking quality & finishing efficiency
- Creative efficiency & progression methods
- Build-up and territorial structure
- Defensive styles (reactive vs anticipatory defending)
- Discipline patterns (yellow vs red cards)

## Tools
- **SQL (BigQuery):** joining league tables, cleaning fields, creating league-level aggregates
- **Tableau:** visualisation and guided storytelling

## Data
Source: **FBref** (team-level tables exported to CSV, then uploaded to BigQuery).  
Period: **First half of the 2025/26 season**.  
Normalisation: volume metrics expressed **per 90 minutes** for comparability.

## Key Findings (Summary)
- **Shot quality:** Ligue 1 shows the highest average chance quality; **Serie A** is consistently lowest, especially among top teams.
- **Finishing:** Ligue 1 underperforms (Goals − xG) despite strong shot quality; **Bundesliga** overperforms (interpret with caution due to dominance effects).
- **Progression:** Bundesliga is more **pass-led**; Premier League and La Liga rely more on **dribbling/carrying**, particularly among top teams.
- **Possession vs progression:** positive relationship at league level; **bottom teams** show more transitional profiles (progression with less possession).
- **Defensive styles:** leagues cluster into distinct profiles when comparing tackles vs interceptions.
- **Discipline:** yellow cards are broadly consistent; red cards vary more across leagues.

## Dashboard Guide
The Tableau Story contains multiple dashboards covering:
1. Attacking quality & finishing
2. Creativity, progression methods & build-up
3. Defensive styles
4. Discipline patterns
5. Possession vs progression (tier comparison)

## Methodology & Caveats
- League-level aggregation can mask within-league variation.
- Half-season snapshot may capture temporary patterns.
- No opponent-strength adjustment is applied.
- Tactical context (pressing triggers, block height) is not directly measured.
- Disciplinary outcomes may reflect enforcement differences as well as team behaviour.

## Files in this Repo
- `/writeup/` Full written report (analysis + methodology + limitations)
- `/sql/` SQL used to build the master table and league aggregates
- `/assets/` Screenshots used in the README (optional)

## Author
Luca Nasillo
