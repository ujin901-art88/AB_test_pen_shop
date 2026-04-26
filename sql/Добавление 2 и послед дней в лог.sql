INSERT INTO test_daily_log (test_day, date, group_name, visitors, purchases, conversion_rate, avg_revenue)
SELECT 
    2 as test_day,
    '2026-04-21' as date,
    group_name,
    COUNT(DISTINCT user_id) as visitors,
    SUM(purchase_flag) as purchases,
    ROUND(SUM(purchase_flag) * 100.0 / COUNT(DISTINCT user_id), 2) as conversion_rate,
    ROUND(AVG(revenue), 2) as avg_revenue
FROM pen_shop_ab_test
WHERE visit_date = '2026-04-21'
GROUP BY group_name
ORDER BY group_name;