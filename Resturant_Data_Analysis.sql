--#Which payment method is the most popular?

DROP VIEW IF EXISTS Total_revenue_generated;

CREATE VIEW Total_revenue_generated AS
SELECT * , ROUND(price * quantity, 2) AS Total_Revenue
FROM sale_data;

SELECT * FROM Total_revenue_generated;

SELECT payment_method, SUM(total_revenue) as total_rev
FROM Total_revenue_generated
GROUP BY payment_method
ORDER BY total_rev DESC;

--Which payment method is the most popular based on city?

SELECT City, payment_method, SUM(total_revenue) AS revenue
FROM Total_revenue_generated
GROUP BY City, payment_method
ORDER BY revenue DESC;

--Data Cleaning: Manager Names have incorrect spacing

SELECT DISTINCT manager
from sale_data
order by manager;

SELECT Manager AS org_manager, REGEXP_REPLACE(TRIM(Manager), '\s+', ' ', 'g') AS update_manager
FROM sale_data;

BEGIN;

UPDATE sale_data
SET Manager = REGEXP_REPLACE(TRIM(Manager), '\s+', ' ', 'g')
WHERE MANAGER IS NOT NULL;

SELECT DISTINCT MANAGER FROM SALE_DATA;

COMMIT;

SELECT * FROM SALE_DATA;

