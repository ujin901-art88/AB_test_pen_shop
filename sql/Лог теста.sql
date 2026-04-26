-- Создадим отдельную таблицу для истории и добавим 1 день)
CREATE TABLE IF NOT EXISTS test_daily_log (
    test_day INT,
    date DATE,
    group_name VARCHAR(1),
    visitors INT,
    purchases INT,
    conversion_rate DECIMAL(5,2),
    avg_revenue DECIMAL(10,2)
);

-- Вставим результаты дня 1
INSERT INTO test_daily_log VALUES
(1, '2026-04-20', 'A', 79, 4, 5.06, 27.29),
(1, '2026-04-20', 'B', 71, 7, 9.86, 54.25);