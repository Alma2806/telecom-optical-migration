CREATE TABLE telecom_data (
    operator_name VARCHAR(100),
    country VARCHAR(50),
    year INT,
    technology ENUM('copper', 'optical'),
    total_users_thousands INT,
    migrated_to_optical_thousands INT,
    investment_million_eur DECIMAL(6,2),
    total_revenue_million_eur DECIMAL(6,2),
    optical_revenue_million_eur DECIMAL(6,2)
);
