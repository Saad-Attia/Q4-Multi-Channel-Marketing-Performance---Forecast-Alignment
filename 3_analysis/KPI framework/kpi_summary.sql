SELECT
    date
    ,channel_id
    ,campaign_id
    ,impressions
    ,clicks
    ,conversions
    ,spend
    ,revenue

    -- Efficiency KPIs
    ,CASE WHEN 
        spend > 0 THEN revenue / spend ELSE NULL 
    END AS POAS
    ,CASE WHEN 
        clicks > 0 THEN spend / clicks ELSE NULL 
    END AS CPC
    ,CASE WHEN 
        impressions > 0 THEN (spend * 1000.0) / impressions ELSE NULL 
    END AS CPM
    ,CASE 
        WHEN conversions > 0 THEN spend / conversions ELSE NULL 
    END AS CPA

    -- Funnel KPIs
    ,CASE 
        WHEN impressions > 0 THEN clicks * 1.0 / impressions 
    END AS CTR
    ,CASE 
        WHEN clicks > 0 THEN conversions * 1.0 / clicks 
    END AS CVR

    -- Revenue KPIs
    ,CASE 
        WHEN clicks > 0 THEN revenue / clicks ELSE NULL 
     END AS RPC
    ,CASE 
        WHEN conversions > 0 THEN revenue / conversions ELSE NULL 
    END AS RPA

    -- Forecast comparison
    ,[forecasted_revenue]
    ,revenue - forecasted_revenue AS forecast_error

INTO dbo.kpi_daily
FROM master_daily;
