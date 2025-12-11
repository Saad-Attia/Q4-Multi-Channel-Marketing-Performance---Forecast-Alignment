SELECT 
    channel_id
    ,SUM(spend) AS total_spend
    ,SUM(revenue) AS total_revenue
    ,SUM(clicks) AS total_clicks
    ,SUM(conversions) AS total_conversions
    ,SUM(impressions) AS total_impressions

    ,AVG(CTR) AS avg_ctr
    ,AVG(CVR) AS avg_cvr
    ,AVG(POAS) AS avg_poas
    ,AVG(CPC) AS avg_cpc
    ,AVG(CPA) AS avg_cpa
    ,AVG(CPM) AS avg_cpm

    ,AVG(RPC) AS avg_rpc
    ,AVG(RPA) AS avg_rpa

    ,AVG(forecast_error) AS avg_forecast_error

INTO channel_kpi_summary
FROM kpi_daily
GROUP BY channel_id;
