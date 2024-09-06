WITH transformed_data AS (
    SELECT * FROM {{ ref('employees_transformed') }}
)
SELECT
    department,
    AVG(annual_salary) AS avg_annual_salary
FROM transformed_data
GROUP BY department