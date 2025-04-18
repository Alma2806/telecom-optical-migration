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

INSERT INTO telecom_data VALUES
('Deutsche Telekom', 'Germany', 2018, 'copper', 10000, 0, 500, 3000, 0),
('Deutsche Telekom', 'Germany', 2022, 'optical', 6000, 3000, 1500, 5000, 1800),
('Deutsche Telekom', 'Germany', 2025, 'optical', 8500, 2500, 1800, 7000, 3000);

INSERT INTO telecom_data VALUES
('Orange', 'France', 2018, 'copper', 9500, 0, 450, 2800, 0),
('Orange', 'France', 2022, 'optical', 7000, 4000, 1600, 5200, 2200),
('Orange', 'France', 2025, 'optical', 9500, 2500, 2000, 7600, 3200);

INSERT INTO telecom_data VALUES
('Telefónica', 'Spain', 2018, 'copper', 8700, 0, 400, 2600, 0),
('Telefónica', 'Spain', 2022, 'optical', 8000, 3500, 1400, 4900, 2000),
('Telefónica', 'Spain', 2025, 'optical', 9800, 1800, 1700, 6900, 3100);
