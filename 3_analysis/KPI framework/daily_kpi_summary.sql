SELECT
    date
    ,SUM(spend) AS daily_spend
    ,SUM(revenue) AS daily_revenue
    ,SUM(clicks) AS daily_clicks
    ,SUM(conversions) AS daily_conversions
    ,SUM(impressions) AS daily_impressions

    ,AVG(CTR) AS avg_ctr
    ,AVG(CVR) AS avg_cvr
    ,AVG(POAS) AS avg_poas

    ,SUM(forecasted_revenue) AS total_forecast
    ,SUM(forecast_error) AS total_error

INTO daily_kpi_summary
FROM kpi_daily
GROUP BY date;
