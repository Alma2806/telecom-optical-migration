SELECT operator_name, country,
       SUM(CASE WHEN technology = 'copper' THEN total_users_thousands ELSE 0 END) AS users_before_optical,
       SUM(CASE WHEN technology = 'optical' THEN total_users_thousands ELSE 0 END) AS users_on_optical
FROM telecom_data
GROUP BY operator_name, country;

SELECT country, operator_name, SUM(migrated_to_optical_thousands) AS total_migrated
FROM telecom_data
GROUP BY country, operator_name;

SELECT country, operator_name, year, SUM(investment_million_eur) AS total_investment
FROM telecom_data
GROUP BY country, operator_name, year
ORDER BY year;

SELECT country, operator_name, year, total_revenue_million_eur, optical_revenue_million_eur,
       ROUND((optical_revenue_million_eur / total_revenue_million_eur) * 100, 2) AS optical_share_percent
FROM telecom_data
WHERE technology = 'optical';

SELECT country, year, SUM(total_users_thousands) AS optical_users
FROM telecom_data
WHERE technology = 'optical'
GROUP BY country, year
ORDER BY year;

SELECT country, operator_name,
       SUM(total_revenue_million_eur) / SUM(investment_million_eur) AS roi_ratio
FROM telecom_data
GROUP BY country, operator_name;

