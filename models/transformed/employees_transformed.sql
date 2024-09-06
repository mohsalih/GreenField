WITH raw_data AS (
    SELECT * FROM {{ ref('employees_raw') }}
)
SELECT
    employee_id,
    employee_name,
    department,
    salary * 12 AS annual_salary
FROM raw_data