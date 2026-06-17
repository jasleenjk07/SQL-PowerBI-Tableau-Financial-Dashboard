-- Query 1
SELECT AVG(loan_amount)
FROM loan_data;

-- Query 2
SELECT
    Status,
    COUNT(*) AS Customers
FROM loan_data
GROUP BY Status;

-- Query 3
SELECT
    ROUND(
        SUM(CASE WHEN Status = 1 THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS DefaultRate
FROM loan_data;

-- Query 4
SELECT
    Gender,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY Gender
ORDER BY Defaults DESC;

-- Query 5
SELECT
    age,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY age
ORDER BY age;

-- Query 6
SELECT
    CreditScoreGroup,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY CreditScoreGroup;

-- Query 7
SELECT
    ROUND(AVG(loan_amount),2) AS AvgLoan
FROM loan_data;

-- Query 8
SELECT
    Status,
    ROUND(AVG(income),2) AS AvgIncome
FROM loan_data
GROUP BY Status;

-- Query 9
SELECT
    loan_purpose,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY loan_purpose
ORDER BY Defaults DESC;

-- Query 10
SELECT
    Gender,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults,
    ROUND(SUM(Status)*100.0/COUNT(*),2) AS DefaultRate
FROM loan_data
GROUP BY Gender
ORDER BY DefaultRate DESC;

-- Query 11
SELECT
    CreditScoreGroup,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults,
    ROUND(SUM(Status)*100.0/COUNT(*),2) AS DefaultRate
FROM loan_data
GROUP BY CreditScoreGroup
ORDER BY DefaultRate DESC;

-- Query 12
SELECT
    age,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults,
    ROUND(SUM(Status)*100.0/COUNT(*),2) AS DefaultRate
FROM loan_data
GROUP BY age
ORDER BY DefaultRate DESC;

-- Query 13
SELECT
    Region,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults,
    ROUND(SUM(Status)*100.0/COUNT(*),2) AS DefaultRate
FROM loan_data
GROUP BY Region
ORDER BY DefaultRate DESC;

-- Query 14
SELECT
    Status,
    ROUND(AVG(loan_amount),2) AS AvgLoan
FROM loan_data
GROUP BY Status;

-- Query 15
SELECT
    CreditScoreGroup,
    ROUND(AVG(income),2) AS AvgIncome
FROM loan_data
GROUP BY CreditScoreGroup
ORDER BY AvgIncome DESC;

-- Query 16
SELECT
    age,
    CreditScoreGroup,
    COUNT(*) AS Customers,
    SUM(Status) AS Defaults
FROM loan_data
GROUP BY age, CreditScoreGroup
ORDER BY Defaults DESC;