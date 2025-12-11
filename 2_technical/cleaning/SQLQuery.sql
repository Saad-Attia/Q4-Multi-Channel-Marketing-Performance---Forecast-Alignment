
SELECT 'campaigns' AS table_name, COUNT(*) AS rows FROM campaigns
UNION ALL 
SELECT 'channels', COUNT(*) FROM channels
UNION ALL
SELECT 'performance', COUNT(*) FROM performance
UNION ALL
SELECT 'forecasting', COUNT(*) FROM forecasting
UNION ALL
SELECT 'product_impact', COUNT(*) FROM product_impact;


DROP TABLE IF EXISTS master_daily;

CREATE TABLE master_daily (
    date DATE,
    channel_id INT,
    campaign_id INT,

    spend FLOAT,
    impressions INT,
    clicks INT,
    conversions INT,
    revenue FLOAT,

    POAS FLOAT,
    CTR FLOAT,
    CVR FLOAT,

    awareness_index FLOAT,
    consideration_index FLOAT,
    impact_score FLOAT,

    forecasted_revenue FLOAT,
    expected_conversions FLOAT,

    flag_clicks_gt_impressions BIT,
    flag_conversions_gt_clicks BIT,
    flag_negative_spend BIT
);
