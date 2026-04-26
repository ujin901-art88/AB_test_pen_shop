
CREATE TABLE IF NOT EXISTS pen_shop_ab_test (
    user_id INT,
    group_name VARCHAR(1),           -- 'A' (старый) или 'B' (новый)
    visit_date DATE,                  -- дата визита
    visited_at TIMESTAMP,             -- точное время визита
    purchase_flag INT,                -- 1 = купил, 0 = не купил
    revenue DECIMAL(10,2) DEFAULT 0,  -- сумма покупки (если есть)
    page_views INT,                   -- сколько страниц посмотрел
    session_duration_sec INT          -- сколько секунд был на сайте
);

