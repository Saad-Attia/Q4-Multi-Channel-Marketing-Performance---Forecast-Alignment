SELECT
    date
    ,AVG(awareness_index) AS avg_awareness
   , AVG(consideration_index) AS avg_consideration
    ,AVG(impact_score) AS avg_impact
    ,SUM(clicks) AS total_clicks
    ,SUM(conversions) AS total_conversions
    ,SUM(revenue) AS total_revenue
INTO impact_kpi_summary
FROM master_daily
GROUP BY date;
