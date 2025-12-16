# Europe Top 5 League Analysis 
# Half Season 25-26 
## (Data collected 10/12/2025)
League-level tactical analysis of Europe’s top five football leagues using SQL and Tableau, based on half-season 2025/26 FBref data.


Interactive Tableau Story: https://public.tableau.com/views/TacticalStylisticHalf-SeasonEuropeanFootballAnalysisTop5Leagues/TacticalStylisticComparisonofEuropesTopFiveLeaguesHalf-Season2526?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

## Overview

This project compares tactical and stylistic tendencies across Europe’s top five domestic football leagues:

Premier League, La Liga, Bundesliga, Serie A, and Ligue 1 
(using data from the first half of the 2025/26 season).

The analysis is conducted at the league level, aggregating team metrics to league averages to identify structural stylistic differences rather than club-specific effects.

Key dimensions analysed include:
- Attacking quality & finishing efficiency  
- Creative efficiency & progression methods  
- Build-up structure and territorial control  
- Defensive styles (reactive vs anticipatory)  
- Discipline and refereeing patterns  

Interactive league position filters (Top 5, Bottom 5, Other teams) are applied throughout to explore how styles persist or diverge across competitive tiers.


## Tools

- **SQL (BigQuery):**  
  - Joining FBref team tables across leagues
  - Cleaning and normalising per 90 minute metrics
  - Deriving composite variables 
  - Creating league-level aggregates  

- **Tableau:**  
  - Exploratory visualisation  
  - Interactive dashboards  
  - Guided storytelling via Tableau Story


## Data

**Source:** FBref (public team-level statistics)
**Period:** First half of the 2025/26 domestic season  
**Collection date:** 10/12/2025  
**Normalisation:**  
  - All volume metrics expressed per 90 minutes  
  - League-level averages derived from team data  

### Key Metrics
- Possession share (%)
- Progressive passes per 90 - a progressive pass is defined by FBref as a pass that moves the ball towards the opponent's goal line by at least 10 yards from the furtherst point reached in the last 6 passes. 
- Progressive carries per 90 - a progressive carry is defined by FBref as a carry that moves the ball towards the opponent's goal line by at least 10 yards from the furtherst point reached in the last 6 actions. 
- Non-penalty xG per shot
- Goals - xG
- Tackles per 90
- Interceptions per 90
- Yellow cards per 90
- Red cards per 90


## Key Findings

- **Shot quality:**  
  Ligue 1 produces the highest-quality chances on average, while Serie A consistently generates the lowest, particularly among top teams.

- **Finishing efficiency:**  
  Ligue 1 underperforms xG despite strong shot quality, while the Bundesliga overperforms (with results partly influenced by elite team dominance).

- **Creative efficiency:**  
  The Bundesliga converts progressive passing into shot creation more efficiently at league level, while elite Premier League teams rely less on sustained progression and more on alternative chance generation mechanisms.

- **Progression methods:**  
  Premier League and La Liga rely more heavily on dribbling and ball carrying, especially among top teams. The Bundesliga remains pass led across all competitive tiers.

- **Possession vs progression:**  
  A positive league-level relationship exists, but bottom teams show more transitional profiles, achieving progression with reduced possession.

- **Defensive styles:**  
  Leagues cluster into distinct defensive identities when comparing tackles (reactive) and interceptions (anticipatory), with additional arrangements across league positions.

- **Discipline:**  
  Yellow cards are broadly consistent across leagues, while red card rates vary significantly, particularly higher in Ligue 1 and La Liga.


## Dashboard Guide

The Tableau Story is organised into the following sections:

1. **Attacking Quality & Creative Efficiency**
2. **Progression & Defensive Styles Comparison**
3. **Possession vs Progression**
4. **Discipline & Refereeing Comparison**

All visualisations support league position filtering for deeper contextual analysis.


## Limitations

- The analysis reflects a half-season snapshot, which may amplify short-term variance.
- League-level aggregation can obscure club-specific tactical nuances.
- League-position filters mitigate this, but do not eliminate within-tier variance.
- Tactical concepts such as pressing intensity or block height are inferred via proxy metrics.
- Disciplinary outcomes may reflect refereeing interpretation as well as team behaviour.
- Metrics are not adjusted for opponent strength, which may affect cross-league comparisons.


## Repository Structure
- /writeup/   - Full written report (PDF)
- /sql/       - SQL queries used to build master and aggregate tables
 - /assets/   - Screenshots of each individual dashboard

---

## Author

**Luca Nasillo**
