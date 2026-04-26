-- 1. Общая статистика по таблице
SELECT 
    COUNT(*) as total_rows,
    COUNT(DISTINCT user_id) as unique_users,
    MIN(visit_date) as first_date,
    MAX(visit_date) as last_date
FROM pen_shop_ab_test;

-- 2. Данные по группам (то, что будем экспортировать)
SELECT 
    group_name,
    COUNT(DISTINCT user_id) as users,
    SUM(purchase_flag) as purchases,
    ROUND(SUM(purchase_flag) * 100.0 / COUNT(DISTINCT user_id), 2) as conversion_percent
FROM pen_shop_ab_test
GROUP BY group_name
ORDER BY group_name;