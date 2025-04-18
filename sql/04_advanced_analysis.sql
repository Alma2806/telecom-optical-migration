SELECT year, SUM(migrated_to_optical_thousands) AS total_migrated
FROM telecom_data
GROUP BY year
ORDER BY total_migrated DESC
LIMIT 3;

SELECT operator_name, country, year,
       ROUND(total_revenue_million_eur * 1000.0 / total_users_thousands, 2) AS arpu_eur
FROM telecom_data
ORDER BY country, year;

SELECT operator_name, country, year,
       ROUND(optical_revenue_million_eur * 1000.0 / NULLIF(total_users_thousands, 0), 2) AS arpu_optical
FROM telecom_data
WHERE technology = 'optical'
ORDER BY country, year;

SELECT country,
       SUM(CASE WHEN technology = 'optical' THEN total_users_thousands ELSE 0 END) AS optical_users,
       SUM(total_users_thousands) AS total_users,
       ROUND(SUM(CASE WHEN technology = 'optical' THEN total_users_thousands ELSE 0 END) / 
             SUM(total_users_thousands) * 100, 2) AS optical_percentage
FROM telecom_data
GROUP BY country;

SELECT year,
       SUM(investment_million_eur) AS total_investment,
       SUM(total_revenue_million_eur) AS total_revenue
FROM telecom_data
GROUP BY year
ORDER BY year;

SELECT operator_name, country, SUM(optical_revenue_million_eur) AS total_optical_revenue
FROM telecom_data
GROUP BY operator_name, country
ORDER BY total_optical_revenue DESC
LIMIT 5;

SELECT country, operator_name, year,
       ROUND(total_revenue_million_eur / investment_million_eur, 2) AS roi
FROM telecom_data
WHERE investment_million_eur > 0
ORDER BY roi DESC
LIMIT 5;

SELECT year, SUM(optical_revenue_million_eur) AS total_optical_revenue
FROM telecom_data
GROUP BY year
ORDER BY year;

SELECT operator_name, country,
       ROUND(SUM(migrated_to_optical_thousands) / 
             SUM(total_users_thousands) * 100, 2) AS migrated_percent
FROM telecom_data
GROUP BY operator_name, country
ORDER BY migrated_percent DESC;

