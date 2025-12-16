CREATE TABLE Income (
    income_id INT IDENTITY(1,1) PRIMARY KEY,   -- Unique ID for each income record
    emp_id INT NOT NULL,                        -- Employee ID
    salary DECIMAL(12,2) NULL,                 -- Salary (can be NULL)
    bonus DECIMAL(12,2) NULL,                  -- Bonus (can be NULL)
    incentives DECIMAL(12,2) NULL,             -- Incentives (can be NULL)
    commission DECIMAL(12,2) NULL,             -- Commission (can be NULL)
    income_date DATE NOT NULL                   -- Date of income
);

INSERT INTO Income (emp_id, salary, bonus, incentives, commission, income_date)
VALUES
(101, 5000.00, 500.00, 200.00, NULL, '2025-12-01'),
(102, 4000.00, NULL, 150.00, 50.00, '2025-12-02'),
(103, 6000.00, 600.00, NULL, 100.00, '2025-12-03'),
(104, NULL, 300.00, 100.00, 200.00, '2025-12-04'),
(105, 5500.00, NULL, NULL, 150.00, '2025-12-05'),
(106, 7000.00, 700.00, 300.00, NULL, '2025-12-06'),
(107, NULL, NULL, 250.00, 100.00, '2025-12-07'),
(108, 4800.00, 200.00, NULL, 80.00, '2025-12-08'),
(109, 5200.00, 400.00, 150.00, NULL, '2025-12-09'),
(110, NULL, 500.00, NULL, 50.00, '2025-12-10'),
(111, 6100.00, 300.00, 200.00, NULL, '2025-12-11'),
(112, 4500.00, NULL, 100.00, 70.00, '2025-12-12'),
(113, NULL, 600.00, 150.00, 90.00, '2025-12-13'),
(114, 5300.00, 400.00, NULL, NULL, '2025-12-14'),
(115, 4900.00, NULL, 200.00, 100.00, '2025-12-15'),
(116, NULL, 350.00, NULL, 150.00, '2025-12-16'),
(117, 6200.00, 500.00, 300.00, NULL, '2025-12-17'),
(118, 5800.00, NULL, 100.00, 120.00, '2025-12-18'),
(119, NULL, 450.00, 200.00, 80.00, '2025-12-19'),
(120, 5600.00, 300.00, NULL, 50.00, '2025-12-20');


Select * from Income;

SELECT *, COALESCE (bonus, salary, incentives,commission, 0) as NZ
FROM Income;