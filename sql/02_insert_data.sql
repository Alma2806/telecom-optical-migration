SELECT operator_name, country,
       SUM(CASE WHEN technology = 'copper' THEN total_users_thousands ELSE 0 END) AS users_before_optical,
       SUM(CASE WHEN technology = 'optical' THEN total_users_thousands ELSE 0 END) AS users_on_optical
FROM telecom_data
GROUP BY operator_name, country;
-- SQL to insert data
INSERT INTO telecom_data VALUES (...);
